# frozen_string_literal: true

class EmployeeSalary < ApplicationRecord
  belongs_to :company_payroll

  def self.import(file, company_payroll_id)
    company_payroll = CompanyPayroll.find(company_payroll_id)
    spreadsheet = open_spreadsheet(file)
    header = %w[month
                employee_name
                employee_id
                designation
                department
                mode_of_payment
                bank_ac_no
                pan
                pf_number
                present_days
                basic_of_pf
                other_basic
                hra
                incentives
                leave_encashment
                lic
                gross_total
                pf
                esi
                pt
                tds
                total_deductions
                net_amount
                amount_in_words]
    (2..spreadsheet.last_row).each do |i|
      row = Hash[[header, spreadsheet.row(i)].transpose]
      employee_salary = company_payroll.employee_salaries.build(row)
      employee_salary.save!
    end
  end

  def self.open_spreadsheet(file)
    Roo::Excelx.new(file.path)
  end
end

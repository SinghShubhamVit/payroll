# frozen_string_literal: true

class AddCompanyPayrollToEmployeeSalary < ActiveRecord::Migration[6.0]
  def change
    add_reference :employee_salaries, :company_payroll, foreign_key: true
  end
end

# frozen_string_literal: true

class EmployeeSalariesController < ApplicationController
  before_action :set_salary_info, only: %i[download_pdf send_payslip]

  def index
    @company = CompanyPayroll.find(params[:company_payroll_id]).company
    @employee_salaries = EmployeeSalary.where(company_payroll_id: params[:company_payroll_id])
  end

  def download_pdf
    send_data(@kit.to_pdf, filename: "#{@salary.employee_name}-payslip.pdf",
                           type: 'application/pdf')
  end

  def send_payslip
    PayslipMailer.send_payslip(@kit.to_pdf, "#{@salary.employee_name}-payslip.pdf").deliver_now
    redirect_to root_path
  end

  private

  def set_salary_info
    @salary = EmployeeSalary.find(params[:salary_id])
    @payroll = @salary.company_payroll
    @company = @payroll.company
    html = render_to_string(partial: 'download_pdf.html.erb', layout: false)
    @kit = PDFKit.new(html, page_size: 'Letter')
  end
end

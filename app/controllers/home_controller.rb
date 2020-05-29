# frozen_string_literal: true

class HomeController < ApplicationController
  def payroll_parse
    @company_payroll = CompanyPayroll.new(payroll_params)
    if @company_payroll.save
      EmployeeSalary.import(params[:company_payroll][:file], @company_payroll.id)
      redirect_to company_company_payroll_employee_salaries_path(company_id: params[:company_payroll][:company_id],
                                                                 company_payroll_id: @company_payroll.id),
                  notice: 'Payroll uploaded successfully'
    else
      render :payroll_upload, alert: 'Payroll not created successfully'
    end
  end

  def payroll_upload
    @companies = Company.order(:name)
    @default_company = Company.first.id
  end

  private

  def payroll_params
    params.require(:company_payroll).permit(:company_id, :month, :year)
  end
end

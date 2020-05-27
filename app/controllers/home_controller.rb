# frozen_string_literal: true

class HomeController < ApplicationController
  def payroll_parse
    @company_payroll = CompanyPayroll.new(payroll_params)
    if @company_payroll.save
      EmployeeSalary.import(params[:company_payroll][:file], @company_payroll.id)
      redirect_to root_url, notice: 'Payroll uploaded successfully'
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

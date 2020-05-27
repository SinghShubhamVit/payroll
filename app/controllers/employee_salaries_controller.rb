# frozen_string_literal: true

class EmployeeSalariesController < ApplicationController
  def index
    @employee_salaries = EmployeeSalary.where(company_payroll_id: params[:company_payroll_id])
  end
end

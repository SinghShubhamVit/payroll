# frozen_string_literal: true

class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
    @payrolls = CompanyPayroll.where(company_id: params[:id])
  end
end

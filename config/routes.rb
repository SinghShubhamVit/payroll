# frozen_string_literal: true

Rails.application.routes.draw do
  get 'companies/index'
  get 'companies/show'
  get 'employee_salaries/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#payroll_upload'
  post 'payroll_parse', to: 'home#payroll_parse'
  get 'download_pdf', to: 'employee_salaries#download_pdf'
  get :send_payslip, to: 'employee_salaries#send_payslip', as: :send_payslip
  resources :companies, only: %i[index show] do
    resources :company_payrolls, only: %i[index show] do
      resources :employee_salaries, only: %i[index show]
    end
  end
end

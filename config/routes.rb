# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#payroll_upload'
  post 'payroll_parse', to: 'home#payroll_parse'
  resources :companies, only: %i[index show] do
    resources :company_payrolls, only: %i[index show] do
      resources :employee_salaries, only: %i[index show]
    end
  end
end

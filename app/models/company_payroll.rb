# frozen_string_literal: true

class CompanyPayroll < ApplicationRecord
  belongs_to :company
  has_many :employee_salaries
end

# frozen_string_literal: true

class Company < ApplicationRecord
  has_many :employee_salaries
  has_many :payroll
end

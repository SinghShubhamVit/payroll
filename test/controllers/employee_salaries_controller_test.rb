# frozen_string_literal: true

require 'test_helper'

class EmployeeSalariesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get employee_salaries_index_url
    assert_response :success
  end
end

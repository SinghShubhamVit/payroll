# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_200_526_062_804) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'companies', force: :cascade do |t|
    t.string 'name'
    t.string 'primary_address'
    t.string 'state'
    t.string 'district'
    t.string 'pin'
    t.string 'cin'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'company_payrolls', force: :cascade do |t|
    t.string 'month'
    t.integer 'year'
    t.bigint 'company_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['company_id'], name: 'index_company_payrolls_on_company_id'
  end

  create_table 'employee_salaries', force: :cascade do |t|
    t.string 'employee_name'
    t.string 'employee_id'
    t.string 'month'
    t.string 'designation'
    t.string 'department'
    t.string 'mode_of_payment'
    t.string 'bank_ac_no'
    t.string 'pan'
    t.string 'pf_number'
    t.integer 'present_days'
    t.integer 'basic_of_pf'
    t.integer 'other_basic'
    t.integer 'hra'
    t.integer 'incentives'
    t.integer 'leave_encashment'
    t.integer 'lic'
    t.integer 'gross_total'
    t.integer 'pf'
    t.integer 'esi'
    t.integer 'pt'
    t.integer 'tds'
    t.integer 'total_deductions'
    t.integer 'net_amount'
    t.string 'amount_in_words'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.bigint 'company_payroll_id'
    t.index ['company_payroll_id'], name: 'index_employee_salaries_on_company_payroll_id'
  end

  add_foreign_key 'company_payrolls', 'companies'
  add_foreign_key 'employee_salaries', 'company_payrolls'
end

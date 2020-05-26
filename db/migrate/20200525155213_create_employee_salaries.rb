# frozen_string_literal: true

class CreateEmployeeSalaries < ActiveRecord::Migration[6.0]
  def change
    create_table :employee_salaries do |t|
      t.string :employee_name
      t.string :employee_id
      t.string :month
      t.string :designation
      t.string :department
      t.string :mode_of_payment
      t.string :bank_ac_no
      t.string :pan
      t.string :pf_number
      t.integer :present_days
      t.integer :basic_of_pf
      t.integer :other_basic
      t.integer :hra
      t.integer :incentives
      t.integer :leave_encashment
      t.integer :lic
      t.integer :gross_total
      t.integer :pf
      t.integer :esi
      t.integer :pt
      t.integer :tds
      t.integer :total_deductions
      t.integer :net_amount
      t.string :amount_in_words

      t.timestamps
    end
  end
end

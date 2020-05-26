# frozen_string_literal: true

class CreateCompanyPayrolls < ActiveRecord::Migration[6.0]
  def change
    create_table :company_payrolls do |t|
      t.string :month
      t.integer :year

      t.references :company, null: false, foreign_key: true
      t.timestamps
    end
  end
end

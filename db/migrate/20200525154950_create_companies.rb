# frozen_string_literal: true

class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :primary_address
      t.string :state
      t.string :district
      t.string :pin
      t.string :cin

      t.timestamps
    end
  end
end

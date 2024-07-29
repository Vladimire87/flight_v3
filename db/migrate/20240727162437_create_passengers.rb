# frozen_string_literal: true

class CreatePassengers < ActiveRecord::Migration[7.1]
  def change
    create_table :passengers do |t|
      t.string :full_name
      t.date :date_of_birth
      t.integer :passport_number
      t.references :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end

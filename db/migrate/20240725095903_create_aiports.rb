# frozen_string_literal: true

class CreateAiports < ActiveRecord::Migration[7.1]
  def change
    create_table :aiports do |t|
      t.string :code

      t.timestamps
    end
    add_index :aiports, :code, unique: true
  end
end

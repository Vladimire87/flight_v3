class RenameAiportToAirport < ActiveRecord::Migration[7.1]
  def change
    rename_table :aiports, :airports
  end
end

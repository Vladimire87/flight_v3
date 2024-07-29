# frozen_string_literal: true

class AddEmailAndPhoneFieldsToBooking < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :email, :string
    add_column :bookings, :phone, :integer
  end
end

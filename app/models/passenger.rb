# frozen_string_literal: true

# == Schema Information
#
# Table name: passengers
#
#  id              :integer          not null, primary key
#  date_of_birth   :date
#  full_name       :string
#  passport_number :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  booking_id      :integer          not null
#
# Indexes
#
#  index_passengers_on_booking_id  (booking_id)
#
# Foreign Keys
#
#  booking_id  (booking_id => bookings.id)
#
class Passenger < ApplicationRecord
  belongs_to :booking
end

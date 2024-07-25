# == Schema Information
#
# Table name: aiports
#
#  id         :integer          not null, primary key
#  code       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_aiports_on_code  (code) UNIQUE
#
class Aiport < ApplicationRecord
  has_many :arriving_flights, class_name: 'Flight', foreign_key: 'arrival_airport_id'
  has_many :departing_flights, class_name: 'Flight', foreign_key: 'departure_airport_id'
end

# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Airports seed
airports = %i[SVO DME VKO JFK LED LAX]

airports.each do |airport|
  Airport.find_or_create_by!(code: airport)
  puts "Airport find or created - #{airport}"
end

# create 3000 flights start from date.now
count = 0
500.times do
  Airport.all.each do |departure|
    arrival = Airport.where.not(id: departure.id).sample
    Flight.create!(
      departure_airport: departure,
      arrival_airport: arrival,
      start_datetime: rand(1.month).seconds.from_now,
      flight_duration: rand(30..500)
    )
    count += 1
    puts "#{count} - Flight created from #{departure.code} - #{arrival.code}"
  end
end

class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @flight_dates = Flight.pluck(:start_datetime).map(&:to_date).uniq.sort
  end
end

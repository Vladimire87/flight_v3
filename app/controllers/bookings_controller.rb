class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight_id])
    @tickets = params[:passengers].to_i
    @booking.flight_id = @flight.id
    @tickets.times { @booking.passengers.build }
  end
end

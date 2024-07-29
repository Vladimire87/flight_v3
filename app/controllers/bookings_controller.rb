# frozen_string_literal: true

class BookingsController < ApplicationController
  before_action :set_flight, only: %i[new create]
  before_action :set_booking, only: %i[show]

  def show; end

  def new
    @booking = Booking.new
    @tickets = params[:passengers].to_i
    @booking.flight_id = @flight.id
    @tickets.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new booking_params
    @booking.flight_id = @flight.id
    if @booking.save
      redirect_to booking_path(@booking), notice: 'Booking was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_flight
    @flight = Flight.find(params[:flight_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params
      .require(:booking)
      .permit(:email, :phone,
              passengers_attributes: %i[full_name date_of_birth passport_number])
  end
end

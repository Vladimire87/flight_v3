# frozen_string_literal: true

class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @flight_dates = Flight.pluck(:start_datetime).map(&:to_date).uniq.sort

    @flights = if params[:from].present? && params[:to].present? && params[:date].present?
                 flight_search
                else
                 Flight.none
               end

    return unless @flights.present?

    @search_details = {
      from: Airport.find(params[:from]).code,
      to: Airport.find(params[:to]).code,
      date: params[:date],
      passengers: params[:passengers]
    }
  end

  private

  def flight_search
    Flight.where(departure_airport_id: search_params[:from])
          .where(arrival_airport_id: search_params[:to])
          .where(start_datetime: search_params[:date].to_date.all_day)
  end

  def search_params
    params.permit(:from, :to, :date, :passengers)
  end
end

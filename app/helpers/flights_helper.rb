# frozen_string_literal: true

module FlightsHelper
  def min_to_hours(mins)
    hours, minutes = mins.divmod 60
    minutes = minutes.to_s.prepend '0' if minutes < 10
    if hours < 1
      "#{minutes}m"
    else
      "#{hours}h #{minutes}m"
    end
  end
end

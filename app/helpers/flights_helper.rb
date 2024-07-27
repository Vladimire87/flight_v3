# frozen_string_literal: true

module FlightsHelper
  def min_to_hours(mins)
    hours, minutes = mins.divmod 60
    if minutes < 10
      minutes = minutes.to_s.prepend '0'
    end
    if hours < 1
      "Travel time: #{minutes}m"
    else
      "Travel time: #{hours}h #{minutes}m"
    end
  end
end

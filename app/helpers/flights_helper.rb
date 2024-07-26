# frozen_string_literal: true

module FlightsHelper
  def min_to_hours(min)
    hours = min / 60
    minutes = min % 60
    "#{hours} час#{'а' if hours != 1} #{minutes} минут#{'ы' if minutes != 1}"
  end
end

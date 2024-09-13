class PassengerMailer < ApplicationMailer
  default from: 'booking@confirmation.com'

  def booking_confirmation(booking)
    @booking = booking
    mail(to: @booking.email, subject: "Your booking #{@booking.id}")
  end
end

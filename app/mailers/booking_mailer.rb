class BookingMailer < ApplicationMailer

  def booking_email
    @booking = params[:booking]
    mail(to: "bookings@3rqc.com", subject: "Nouveau booking")
  end

end

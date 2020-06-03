# Preview all emails at http://localhost:3000/rails/mailers/booking_mailer
class BookingMailerPreview < ActionMailer::Preview
  def booking_email
    BookingMailer.with(booking: Booking.first).booking_email
  end
end

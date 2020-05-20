
class BookingsController < ApplicationController
  respond_to :html

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.save

    if @booking.persisted?
      flash[:notice] = "Votre rendez-vous a été ajouté à l'horaire! À bientôt."
      redirect_to bookings_path
    else
      respond_with(@booking)
    end

  end

  private

    def booking_params
      params.require(:booking).permit(:name, :start_time, :email, :phone)
    end

end

class BookingsController < InheritedResources::Base

  def create
    flash[:notice] = "Votre rendez-vous a été ajouté à l'horaire! À bientôt."
    create! do |format|
      format.html { redirect_to bookings_path }
    end
  end

  private

    def booking_params
      params.require(:booking).permit(:name, :start_time, :email, :phone)
    end

end

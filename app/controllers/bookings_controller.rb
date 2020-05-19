class BookingsController < InheritedResources::Base

  private

    def booking_params
      params.require(:booking).permit(:name, :start_time, :email, :phone)
    end

end

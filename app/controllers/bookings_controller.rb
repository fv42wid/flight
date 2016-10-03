class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @trip = Trip.find(booking_params[:trip_id])
    @passenger_count = params[:passengers].to_i
    @passenger_count.times {@booking.passengers.build}
  end

  private
    def booking_params
      params.require(:booking).permit(:trip_id, :passengers, passengers_attributes: [:id, :name, :email])
    end
end

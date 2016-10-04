class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @trip = Trip.find(booking_params[:trip_id])
    @passenger_count = params[:passengers].to_i
    @passenger_count.times {@booking.passengers.build}
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking
    else
      redirect_to new_booking_path
    end
  end

  private
    def booking_params
      params.require(:booking).permit(:trip_id, passengers_attributes: [:id, :name, :email])
    end
end

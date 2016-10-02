class TripsController < ApplicationController

  def index
    @trips = Trip.browse(trip_params[:start_airport_id], trip_params[:finish_airport_id], trip_params[:start_time])

    @start_airports = Airport.find(Trip.uniq.pluck(:start_airport_id)).map{ |s| [s.code, s.id] }
    @finish_airports = Airport.find(Trip.uniq.pluck(:finish_airport_id)).map{ |f| [f.code, f.id] }
    @passengers = [1,2,3,4]
    @dates = Trip.select("start_time").map{ |time| time.start_time.strftime("%Y%m%d") }.uniq
    @booking = Booking.new
    
    params[:trip] ||= {:start_airport_id => 0, :finish_airport_id => 0, :passengers => 1, :start_time => 0}
    
  end

  private
    def trip_params
      #use params.fetch here to make trip optional, if user visits index without entering search params
      params.fetch(:trip, {}).permit(:start_airport_id, :finish_airport_id, :passengers, :start_time)
    end
end

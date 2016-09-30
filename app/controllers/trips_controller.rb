class TripsController < ApplicationController

  def index
    @start_airports = Airport.find(Trip.uniq.pluck(:start_airport_id)).map{ |s| [s.code, s.id] }
    @finish_airports = Airport.find(Trip.uniq.pluck(:finish_airport_id)).map{ |f| [f.code, f.id] }
    @passengers = [1,2,3,4]
    @dates = Trip.select("start_time").map{ |time| time.start_time.strftime("%Y%m%d") }.uniq
  end
end

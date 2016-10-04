class Trip < ApplicationRecord
  belongs_to :from_airport, class_name: "Airport", foreign_key: "start_airport_id"
  belongs_to :to_airport, class_name: "Airport", foreign_key: "finish_airport_id"
  has_many :passengers
  has_many :bookings

  def Trip.browse(start_airport, finish_airport, start_time)
    query = Trip.all
    query = query.where(start_airport_id: start_airport) if start_airport.present?
    query = query.where(finish_airport_id: finish_airport) if finish_airport.present?
    if start_time.present?
      start_time = start_time.to_datetime
      end_time = start_time + 1
      query = query.where(start_time: start_time..end_time)
    end

    #return value
    if start_airport.nil? and finish_airport.nil? and start_time.nil?
      query = Trip.last(10)
    else
      query
    end
  end
end

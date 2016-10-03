class Booking < ApplicationRecord
  has_one :trip
  belongs_to :booker, class_name: "Passenger"
  has_many :passengers
  
end

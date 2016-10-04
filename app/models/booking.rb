class Booking < ApplicationRecord
  has_one :trip
  has_many :passengers

  accepts_nested_attributes_for :passengers
  
end

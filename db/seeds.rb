# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#airports
airports = Airport.create([{code: 'SFO'}, {code: 'NYC'}, {code: 'PHL'}])

#flights
trip = Trip.create([{start_airport_id: 1, finish_airport_id: 2, start_time: 1.day.from_now.to_datetime, duration: 90}, {start_airport_id: 2, finish_airport_id: 1, start_time: 2.days.from_now.to_datetime, duration: 100}])

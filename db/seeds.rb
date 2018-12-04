# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
# City
10.times do
    airports = Airport.create!(city: Faker::Pokemon.location, airport_code: Faker::Code.nric)
  end

1000.times do 
flights= Flight.create!(duration: Random.rand(1..500), departure_date: Random.rand(1..7), departure_airport_id: Random.rand(1..10), arrival_airport_id: Random.rand(1..10))
end
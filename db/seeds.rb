# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Airport.delete_all
Flight.delete_all

Airport.create!(name: "London Heathrow", code: "LHR")
Airport.create!(name: "London Standsted", code: "STN")
Airport.create!(name: "London Gatwick", code: "LGW")
Airport.create!(name: "Tangier Ibn Battouta", code: "TNG")
Airport.create!(name: "Suvarnabhumi", code: "BKK")
Airport.create!(name: "Los Angeles International", code: "LAX")
Airport.create!(name: "Cape Town International Airpor", code: "CPT")
Airport.create!(name: "Dublin", code: "DUB")


all_airports = Airport.all
3.times do
  day = 1
  21.times do
    all_airports.each do |origin|
      all_airports.each do |destination|
        departure_time = Faker::Time.between(DateTime.now + day, DateTime.now + day)
        arrival_time = Faker::Time.between(DateTime.now + day, DateTime.now + day)
        if destination != origin
          Flight.create!(origin: origin, destination: destination, arrival_time: arrival_time, departure_time: departure_time)
        end
      end
    end
    day += 1
  end
end

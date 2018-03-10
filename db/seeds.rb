# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Airport.delete_all

Airport.create!(name: "London Heathrow", code: "LHR")
Airport.create!(name: "London Standsted", code: "STN")
Airport.create!(name: "London Gatwick", code: "LGW")
Airport.create!(name: "Tangier Ibn Battouta", code: "TNG")
Airport.create!(name: "Suvarnabhumi", code: "BKK")
Airport.create!(name: "Los Angeles International", code: "LAX")
Airport.create!(name: "Cape Town International Airpor", code: "CPT")
Airport.create!(name: "Dublin", code: "DUB")

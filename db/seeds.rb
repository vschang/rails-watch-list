# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

p "cleaning the DB"
Movie.destroy_all

10.times { Movie.create({ title: Faker::Movie.title, overview: Faker::Restaurant.review, poster_url: Faker::LoremFlickr.image(size: "400x600", search_terms: ['movie poster']), rating: rand(0.0..10.0) }) }

p "Finished Seeding!"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Restaurant.destroy_all

10.times do
  Restaurant.create(name: Faker::Dessert.topping, address: Faker::Address.street_address, phone_number: Faker::Number.number(9).to_s, category: ["chinese", "italian", "japanese", "french", "belgian"].sample)
end

50.times do
  Review.create(content: Faker::HarryPotter.quote, rating: rand(0..5), restaurant_id: rand(0..9))
end

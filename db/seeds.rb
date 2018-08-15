# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# restaurant = Restaurant.create([{}])


puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
categories = ["chinese", "italian", "japanese", "french", "belgian"]

5.times do
  restaurant_name = Faker::TheITCrowd.character
  restaurant_address = Faker::Pokemon.location
  restaurant_phone_number = Faker::PhoneNumber.cell_phone
  restaurant_category = categories.sample

  restaurant = Restaurant.new(name: restaurant_name, address: restaurant_address, phone_number: restaurant_phone_number, category: restaurant_category)
  restaurant.save
end

puts 'Finished!'

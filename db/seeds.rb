# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Creating restaurants'

10.times do
  category_array = %w[chinese italian japanese french belgian]
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::JapaneseMedia::DragonBall.planet,
    category: category_array.sample
  )
  restaurant.save!
  puts "#{restaurant.name} created"
end

puts 'All restaurants created, enjoy'

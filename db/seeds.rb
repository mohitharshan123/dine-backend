# This file should contain all the record creation needed to seed the database with its default values.
require 'faker'

CategoryItem.delete_all
Category.delete_all
Restaurant.delete_all


10.times { Restaurant.create!(name: Faker::Name.name, location: Faker::Address.city, contact: Faker::PhoneNumber.phone_number ) }
Category.create!(name: 'Breakfast', restaurant: Restaurant.first)
Category.create!(name: 'Lunch', restaurant: Restaurant.first)
Category.create!(name: 'Dinner', restaurant: Restaurant.first)

10.times do
  CategoryItem.create(name: Faker::Food.dish, category: Category.first, price: Faker::Number.number(digits: 3),
                      description: Faker::Food.description)
end
10.times do
  CategoryItem.create(name: Faker::Food.dish, category: Category.last, price: Faker::Number.number(digits: 3),
                      description: Faker::Food.description)
end
10.times do
  CategoryItem.create(name: Faker::Food.dish, category: Category.find_by_name('Lunch'),
                      price: Faker::Number.number(digits: 3), description: Faker::Food.description)
end

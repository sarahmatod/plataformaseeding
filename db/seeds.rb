# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

# cleaning all database
Vote.all.each do |vote|
  vote.delete
end

UserChoice.all.each do |choice|
  choice.delete
end

Item.all.each do |item|
  item.delete
end

Collection.all.each do |collection|
  collection.delete
end

User.all.each do |user|
  user.delete
end

#seeding main user

User.create(
    admin: true,
    email: 'admin@luizabarcelos.com',
    name: 'equipe',
    instagram: 'luizabarcelos',
    numer: 36,
    password: '123123',
    password_confirmation: '123123')
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

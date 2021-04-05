# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

User.create(name: "equipeluizabarcelos", instagram: "luizabarcelos", email: "equipe@luizabarcelos.com", encrypted_password: "1234567890",  numer: 0, admin: true)

Collection.create(name: "inverno 2021", active: false)
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

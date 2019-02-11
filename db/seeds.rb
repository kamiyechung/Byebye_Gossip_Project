# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

2.times do
  user = User.create!(first_name: Faker::DragonBall.character, last_name: Faker::Name.last_name , description: Faker::HowIMetYourMother.catch_phrase, email: "jojo#{rand(1..5)}@yopmail.com", password: "1234567")
end

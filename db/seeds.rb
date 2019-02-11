# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# puts ENV['SENDGRID_LOGIN']
# puts ENV['SENDGRID_PWD']

# 5.times do |i|
#   user = User.create!(first_name: Faker::DragonBall.character, last_name: Faker::Name.last_name , description: Faker::HowIMetYourMother.catch_phrase, email: "jojo#{i}@yopmail.com", password: "1234567")
# end

# 5.times do |i|
#   event = Event.create!(start_date: Faker::Date.forward(23), duration: 40, title: Faker::Color.color_name, description: Faker::FamilyGuy.quote, price: rand(2..999), location: Faker::StarWars.planet, user_id: User.ids.sample)
# end

5.times do
  attendance = Attendance.create!(user_id: User.ids.sample, event_id: Event.ids.sample)
end

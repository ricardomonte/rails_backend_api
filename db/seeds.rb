# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'uri'
require 'faker'

User.destroy_all

arr_users = []

10.times {
  user = User.create(
    name: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    email: Faker::Internet.email,
    job: Faker::Job.title,
    phone: Faker::PhoneNumber.cell_phone_in_e164
  )
  arr_users << user
}

arr_users.each do |user|
  img = URI.open("https://robohash.org/#{user.name}.png")
  user.avatar.attach(io: img, filename: "#{user.name}.png", content_type: 'image/png')
end

puts 'seed success'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
include Faker 

20.times do
    User.create(
        name: Faker::Name.name,
        bio: Faker::Quote.matz,
        picture: Faker::Avatar.image
    )
end

Group.create(name:"e")
Group.create(name:"a")
Group.create(name:"o")
Group.create(name:"n")
Group.create(name:"c")

puts "Seeding Questions"
Question.create(trait:"a", content:"I sympathize with others' feelings")
Question.create(trait:"c", content:"I like order")
Question.create(trait:"e", content:"I am the life of the party")
Question.create(trait:"o", content:"I have a good imagination")
Question.create(trait:"n", content:"More often than not, I am stressed")
puts "Done seeding questions"
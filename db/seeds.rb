# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
include Faker 

10.times do
    User.create(
        name: Faker::Name.name,
        bio: Faker::Quote.matz,
        picture: Faker::Avatar.image
    )
end

Group.create(name:"1")
Group.create(name:"2")
Group.create(name:"3")
Group.create(name:"4")
Group.create(name:"5")
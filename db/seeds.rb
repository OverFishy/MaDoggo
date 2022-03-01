# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning DB'
User.delete_all
Friendship.delete_all
puts 'DB cleaned'

# user1 = User.create!(
#   password: '1234567',
#   email: 'o@o.com'
# )

# user2 = User.create!(
#   password: '1234567',
#   email: 'l@l.com'
# )

# Friendship.create!(
#   user1: user1,
#   user2: user2,
#   status: 's'
# )


puts 'dogpark'
Park.delete_all

dogpark1 = Park.create!(
  name: 'Park Ha Yarkon',
  location: 'Tel Aviv'
)

dogpark2 = Park.create!(
  name: 'Tverya Dog Park',
  location: 'Tel Aviv'
)

dogpark3 = Park.create!(
  name: 'Park Ha Yarkon Dog Park, Tel Aviv-Yafo',
  location: 'Tel Aviv'
)

dogpark4 = Park.create!(
  name: 'Park Ha Yarkon Dog Park, Tel Aviv-Yafo',
  location: 'Tel Aviv'
)

dogpark5 = Park.create!(
  name: 'Meir Garden Dog Park',
  location: 'Tel Aviv'
)

dogpark6 = Park.create!(
  name: 'Kikar Hamedina Dog Park',
  location: 'Tel Aviv'
)

dogpark7 = Park.create!(
  name: 'Sheinkin Dog Park',
  location: 'Tel Aviv'
)

dogpark8 = Park.create!(
  name: 'Dubnov Dog park',
  location: 'Tel Aviv'
)

dogpark9 = Park.create!(
  name: 'Manshiya Dog Park',
  location: 'Tel Aviv'
)
dogpark10 = Park.create!(
  name: 'Dogs Park - Midron',
  location: 'Tel Aviv'
)


# t.string "name"
# t.string "location"
# t.float "latitude"
# t.float "longitude"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false

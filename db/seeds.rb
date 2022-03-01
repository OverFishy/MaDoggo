# ---- Cleaning DB ----
puts 'cleaning DB'
Friendship.delete_all
Park.delete_all
Dog.delete_all
User.delete_all
puts 'DB cleaned'

# ---- creating users & friendship ----
puts 'creating 2 users'
user1 = User.create!(
  password: '1234567',
  email: 'o@o.com'
)

user2 = User.create!(
  password: '1234567',
  email: 'l@l.com'
)
puts '2 users created'

puts 'creating friendship'
Friendship.create!(
  user1: user1,
  user2: user2,
  status: 's'
)
puts 'friendship created'

# ---- creating 10 parks ----
puts 'creating parks'
Park.create!(
  name: 'Park Ha Yarkon',
  location: 'Hayarkon park Tel Aviv'
)

Park.create!(
  name: 'Tverya Dog Park',
  location: 'rotchild Tel Aviv'
)

Park.create!(
  name: 'Park Ha Yarkon Dog Park, Tel Aviv-Yafo',
  location: 'ben yehuda Tel Aviv'
)

Park.create!(
  name: 'Park Ha Yarkon Dog Park, Tel Aviv-Yafo',
  location: 'frisheman Tel Aviv'
)

Park.create!(
  name: 'Meir Garden Dog Park',
  location: 'givatayim israel'
)

Park.create!(
  name: 'Kikar Hamedina Dog Park',
  location: 'Tel Aviv'
)

Park.create!(
  name: 'Sheinkin Dog Park',
  location: 'Tel Aviv'
)

Park.create!(
  name: 'Dubnov Dog park',
  location: 'Tel Aviv'
)

Park.create!(
  name: 'Manshiya Dog Park',
  location: 'Tel Aviv'
)

Park.create!(
  name: 'Dogs Park - Midron',
  location: 'Tel Aviv'
)

puts 'Seed migrated!'

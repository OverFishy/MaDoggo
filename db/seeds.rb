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
  name: 'Ha-Yarkon dog park, Tel-Aviv',
  location: 'Hayarkon park Tel Aviv'
)

Park.create!(
  name: 'kiryat sefer dog park, Tel-Aviv',
  location: 'kiryat sefer garden Tel Aviv'
)

Park.create!(
  name: 'The independence dog park, Tel-Aviv',
  location: 'the independence park Tel Aviv'
)

Park.create!(
  name: 'Frisheman dog park, Tel-Aviv',
  location: 'frisheman Tel Aviv'
)

Park.create!(
  name: 'Arison Dog Park, Tel-Aviv',
  location: 'arison tel aviv'
)

Park.create!(
  name: 'Gan meir Dog Park, Tel-Aviv',
  location: 'gan meir Tel Aviv'
)

Park.create!(
  name: 'Dvora baron Dog Park, Tel-Aviv',
  location: 'dvora baron garden Tel Aviv'
)

Park.create!(
  name: 'Sarona Dog park, Tel-Aviv',
  location: 'sarona park Tel Aviv'
)

Park.create!(
  name: 'Dubnov Dog Park, Tel-Aviv',
  location: 'dubnov Tel Aviv'
)

Park.create!(
  name: 'Zeev garden dog park, Tel-Aviv',
  location: 'zeev garden Tel Aviv'
)

puts 'Seed migrated!'

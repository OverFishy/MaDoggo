require 'faker'
require "uri"

# ---- Cleaning DB ----

puts 'cleaning DB'
Friendship.delete_all
ParkVisit.delete_all
Park.delete_all
Dog.delete_all
User.delete_all
puts 'DB cleaned'

# ---- creating users & friendship ----

puts 'creating 4 users'

ofek = User.create!(
  password: '1234567',
  email: 'ofek@gmail.com',
  name: 'Ofek'
)

luke = User.create!(
  password: '1234567',
  email: 'luke@gamil.com',
  name: 'Luke'
)

daniel = User.create!(
  password: '1234567',
  email: 'daniel@gamil.com',
  name: 'Daniel'
)

deborah = User.create!(
  password: '1234567',
  email: 'deborah@gamil.com',
  name: 'Deborah'
)
puts '4 users created'

puts 'creating friendships'

Friendship.create!(
  user1: ofek,
  user2: luke,
  status: 's'
)

Friendship.create!(
  user1: ofek,
  user2: daniel,
  status: 's'
)

Friendship.create!(
  user1: ofek,
  user2: deborah,
  status: 's'
)

puts 'friendships created'

# ---- creating 15 dogs for users ----

puts 'creating 15 dogs'

15.times do
  Dog.create!(
    name: Faker::Creature::Dog.name,
    gender: Faker::Creature::Dog.gender,
    breed: Faker::Creature::Dog.breed,
    age: rand(1..20),
    size: Faker::Creature::Dog.size,
    user: [ofek, deborah, luke, daniel].sample
  )
end

puts '15 dogs created'

# ---- creating 10 parks ----

puts 'creating parks'

hayarkon = Park.create!(
  name: 'Ha-Yarkon dog park, Tel-Aviv',
  location: 'Hayarkon park Tel Aviv',
)

file1 = URI.open('https://humaneheroes.org/wp-content/uploads/2019/09/txhh_best-practices-when-taking-dog-park.png')

hayarkon.photo.attach(io: file1, filename: 'park.png', content_type: 'image/png')

park2 = Park.create!(
  name: 'kiryat sefer dog park, Tel-Aviv',
  location: 'kiryat sefer garden Tel Aviv'
)
file2 = URI.open('https://static.timesofisrael.com/www/uploads/2016/08/F150618MA013-640x400.jpg')
park2.photo.attach(io: file2, filename: 'park.png', content_type: 'image/png')

independence = Park.create!(
  name: 'The independence dog park, Tel-Aviv',
  location: 'the independence park Tel Aviv'
)
file3 = URI.open('https://photos.bringfido.com/attractions/6/7/0/9076/9076_28834.png?size=slide&density=2x')
independence.photo.attach(io: file3, filename: 'park.png', content_type: 'image/png')

park4 = Park.create!(
  name: 'Frisheman dog park, Tel-Aviv',
  location: 'frisheman Tel Aviv'
)
file4 = URI.open('https://photos.bringfido.com/attractions/6/7/0/9076/9076_28834.png?size=slide&density=2x')
park4.photo.attach(io: file4, filename: 'park.png', content_type: 'image/png')

park5 = Park.create!(
  name: 'Arison Dog Park, Tel-Aviv',
  location: 'arison tel aviv'
)
file5 = URI.open('https://photos.bringfido.com/attractions/6/7/0/9076/9076_28834.png?size=slide&density=2x')
park5.photo.attach(io: file5, filename: 'park.png', content_type: 'image/png')

park6 = Park.create!(
  name: 'Gan meir Dog Park, Tel-Aviv',
  location: 'gan meir Tel Aviv'
)
file6 = URI.open('https://photos.bringfido.com/attractions/6/7/0/9076/9076_28834.png?size=slide&density=2x')
park6.photo.attach(io: file6, filename: 'park.png', content_type: 'image/png')

park7 = Park.create!(
  name: 'Dvora baron Dog Park, Tel-Aviv',
  location: 'dvora baron garden Tel Aviv'
)
file7 = URI.open('https://photos.bringfido.com/attractions/6/7/0/9076/9076_28834.png?size=slide&density=2x')
park7.photo.attach(io: file7, filename: 'park.png', content_type: 'image/png')

park8 = Park.create!(
  name: 'Sarona Dog park, Tel-Aviv',
  location: 'sarona park Tel Aviv'
)
file8 = URI.open('https://photos.bringfido.com/attractions/6/7/0/9076/9076_28834.png?size=slide&density=2x')
park8.photo.attach(io: file8, filename: 'park.png', content_type: 'image/png')

park9 = Park.create!(
  name: 'Dubnov Dog Park, Tel-Aviv',
  location: 'dubnov Tel Aviv'
)
file9 = URI.open('https://photos.bringfido.com/attractions/6/7/0/9076/9076_28834.png?size=slide&density=2x')
park9.photo.attach(io: file9, filename: 'park.png', content_type: 'image/png')

park10 = Park.create!(
  name: 'Zeev garden dog park, Tel-Aviv',
  location: 'zeev garden Tel Aviv'
)
file10 = URI.open('https://photos.bringfido.com/attractions/6/7/0/9076/9076_28834.png?size=slide&density=2x')
park10.photo.attach(io: file10, filename: 'park.png', content_type: 'image/png')

puts 'parks created'

# ---- creating parks visits ----

puts 'creating 3 park visit'

ParkVisit.create!(
  park: hayarkon,
  user: luke
)

ParkVisit.create!(
  park: independence,
  user: daniel
)

ParkVisit.create!(
  park: independence,
  user: deborah
)

puts '3 park visit created'

puts 'Seed migrated!'

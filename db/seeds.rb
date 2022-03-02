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

# ---- creating 10 dogs for users ----

puts 'creating 10 dogs'

10.times do
  Dog.create!(
    name: Faker::Creature::Dog.name,
    gender: Faker::Creature::Dog.gender,
    breed: Faker::Creature::Dog.breed,
    age: rand(1..20),
    size: Faker::Creature::Dog.size,
    user: [user1, user2].sample
  )
end

puts '10 dogs created'

# ---- creating 10 parks ----

puts 'creating parks'

park1 = Park.create!(
  name: 'Ha-Yarkon dog park, Tel-Aviv',
  location: 'Hayarkon park Tel Aviv',
)

file1 = URI.open('https://humaneheroes.org/wp-content/uploads/2019/09/txhh_best-practices-when-taking-dog-park.png')

park1.photo.attach(io: file1, filename: 'park.png', content_type: 'image/png')

park2 = Park.create!(
  name: 'kiryat sefer dog park, Tel-Aviv',
  location: 'kiryat sefer garden Tel Aviv'
)
file2 = URI.open('https://static.timesofisrael.com/www/uploads/2016/08/F150618MA013-640x400.jpg')
park2.photo.attach(io: file2, filename: 'park.png', content_type: 'image/png')

park3 = Park.create!(
  name: 'The independence dog park, Tel-Aviv',
  location: 'the independence park Tel Aviv'
)
file3 = URI.open('https://img.theculturetrip.com/1440x807/smart/wp-content/uploads/2015/12/56-3651404-14036367387-5483030c0c-k.jpg')
park3.photo.attach(io: file3, filename: 'park.png', content_type: 'image/png')

park4 = Park.create!(
  name: 'Frisheman dog park, Tel-Aviv',
  location: 'frisheman Tel Aviv'
)
file4 = URI.open('https://img.theculturetrip.com/768x/smart/wp-content/uploads/2018/03/2045796.jpg')
park4.photo.attach(io: file4, filename: 'park.png', content_type: 'image/png')

park5 = Park.create!(
  name: 'Arison Dog Park, Tel-Aviv',
  location: 'arison tel aviv'
)
file5 = URI.open('https://www.mesaparks.com/home/showpublishedimage/23732/637044005290900000')
park5.photo.attach(io: file5, filename: 'park.png', content_type: 'image/png')

park6 = Park.create!(
  name: 'Gan meir Dog Park, Tel-Aviv',
  location: 'gan meir Tel Aviv'
)
file6 = URI.open('https://israelbetweenthelines.com/wp-content/uploads/2017/09/ibl-1020x510-73.png')
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
file8 = URI.open('https://upload.wikimedia.org/wikipedia/commons/c/ca/Tompkins_Square_Big_Dog_Run.JPG')
park8.photo.attach(io: file8, filename: 'park.png', content_type: 'image/png')

park9 = Park.create!(
  name: 'Dubnov Dog Park, Tel-Aviv',
  location: 'dubnov Tel Aviv'
)
file9 = URI.open('https://d34c09ztlk5mrb.cloudfront.net/cunningham-recreation/d2sacxxyngi6cb_cloudfront_net/Dog-Park-Image_183d17ce614a305ef7e14498bef98c4b.jpg')
park9.photo.attach(io: file9, filename: 'park.png', content_type: 'image/png')

park10 = Park.create!(
  name: 'Zeev garden dog park, Tel-Aviv',
  location: 'zeev garden Tel Aviv'
)
file10 = URI.open('https://photos.bringfido.com/attractions/6/7/0/9076/9076_28834.png?size=slide&density=2x')
park10.photo.attach(io: file10, filename: 'park.png', content_type: 'image/png')

puts 'parks created'

# ---- creating parks visits ----

puts 'creating park visit'

ParkVisit.create!(
  park: park1,
  user: user2
)

puts 'park visit created'

puts 'Seed migrated!'

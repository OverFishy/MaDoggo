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
  email: 'luke@gmail.com',
  name: 'Luke'
)

daniel = User.create!(
  password: '1234567',
  email: 'daniel@gmail.com',
  name: 'Daniel'
)

deborah = User.create!(
  password: '1234567',
  email: 'deborah@gmail.com',
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

dog1 = Dog.create!(
  name: Faker::Creature::Dog.name,
  gender: Faker::Creature::Dog.gender,
  breed: :dalmatian,
  age: 4,
  size: :big,
  user: [ofek, deborah, luke, daniel].sample
)
file1 = URI.open('https://cdn.britannica.com/60/12460-004-54537CCC.jpg')
dog1.main_photo.attach(io: file1, filename: 'dog.png', content_type: 'image/png')
puts 'att main_photo dog 1'

dog2 = Dog.create!(
  name: Faker::Creature::Dog.name,
  gender: :pomeranian,
  breed: Faker::Creature::Dog.breed,
  age: 2,
  size: :small,
  user: [ofek, deborah, luke, daniel].sample
)
file2 = URI.open('https://media-be.chewy.com/wp-content/uploads/2021/06/02102132/Pomeranian_Featured-Image.jpg')
dog2.main_photo.attach(io: file2, filename: 'dog.png', content_type: 'image/png')
puts 'att main_photo dog 2'

dog3 = Dog.create!(
  name: Faker::Creature::Dog.name,
  gender: Faker::Creature::Dog.gender,
  breed: :mixed,
  age: 6,
  size: :medium,
  user: [ofek, deborah, luke, daniel].sample
)
file3 = URI.open('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/mixed-breed-dog-portrait-royalty-free-image-1154295393-1563379374.jpg?crop=0.47619xw:1xh;center,top&resize=480:*')
dog3.main_photo.attach(io: file3, filename: 'dog.png', content_type: 'image/png')
puts 'att main_photo dog 3'

dog4 = Dog.create!(
  name: Faker::Creature::Dog.name,
  gender: Faker::Creature::Dog.gender,
  breed: :mixed,
  age: rand(1..20),
  size: :medium,
  user: [ofek, deborah, luke, daniel].sample
)
file4 = URI.open('https://assets.slice.ca/wp-content/uploads/2015/02/cutest-mixed-breed-dogs1.jpg')
dog4.main_photo.attach(io: file4, filename: 'dog.png', content_type: 'image/png')
puts 'att main_photo dog 4'

dog5 = Dog.create!(
  name: Faker::Creature::Dog.name,
  gender: Faker::Creature::Dog.gender,
  breed: :mixed,
  age: rand(1..20),
  size: :medium,
  user: [ofek, deborah, luke, daniel].sample
)
file5 = URI.open('https://static.boredpanda.com/blog/wp-content/uploads/2014/03/mixed-breed-dogs-27.jpg')
dog5.main_photo.attach(io: file5, filename: 'dog.png', content_type: 'image/png')
puts 'att main_photo dog 5'

dog6 = Dog.create!(
  name: Faker::Creature::Dog.name,
  gender: Faker::Creature::Dog.gender,
  breed: :mixed,
  age: rand(1..20),
  size: :medium,
  user: [ofek, deborah, luke, daniel].sample
)
file6 = URI.open('https://wl-brightside.cf.tsp.li/resize/728x/jpg/2d2/908/9e46075514839a75bccfb0b6c8.jpg')
dog6.main_photo.attach(io: file6, filename: 'dog.png', content_type: 'image/png')
puts 'att main_photo dog 6'

dog7 = Dog.create!(
  name: Faker::Creature::Dog.name,
  gender: Faker::Creature::Dog.gender,
  breed: "golden retriever",
  age: rand(1..20),
  size: :medium,
  user: [ofek, deborah, luke, daniel].sample
)
file7 = URI.open('https://images.saymedia-content.com/.image/ar_4:3%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:eco%2Cw_1200/MTc0MDk2MzYxNjM1OTgwODY2/what-you-should-know-about-owning-a-golden-retriever.jpg')
dog7.main_photo.attach(io: file7, filename: 'dog.png', content_type: 'image/png')
puts 'att main_photo dog 7'

dog8 = Dog.create!(
  name: Faker::Creature::Dog.name,
  gender: Faker::Creature::Dog.gender,
  breed: "golden retriever",
  age: 1,
  size: :medium,
  user: [ofek, deborah, luke, daniel].sample
)
file8 = URI.open('https://images.unsplash.com/photo-1615233500064-caa995e2f9dd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Z29sZGVuJTIwcmV0cmlldmVyJTIwcHVwcHl8ZW58MHx8MHx8&w=1000&q=80')
dog8.main_photo.attach(io: file8, filename: 'dog.png', content_type: 'image/png')
puts 'att main_photo dog 8'

dog9 = Dog.create!(
  name: Faker::Creature::Dog.name,
  gender: Faker::Creature::Dog.gender,
  breed: "golden retriever",
  age: 2,
  size: :small,
  user: [ofek, deborah, luke, daniel].sample
)
file9 = URI.open('https://www.zooplus.co.uk/magazine/wp-content/uploads/2019/03/Golden-retriever-dog-breed-1.jpg')
dog9.main_photo.attach(io: file9, filename: 'dog.png', content_type: 'image/png')
puts 'att main_photo dog 9'

dog10 = Dog.create!(
  name: Faker::Creature::Dog.name,
  gender: Faker::Creature::Dog.gender,
  breed: :bulldog,
  age: 10,
  size: :medium,
  user: [ofek, deborah, luke, daniel].sample
)
file10 = URI.open('https://www.thesprucepets.com/thmb/FEsGt1xpqpRi_YzoMCuzPEWcvso=/872x654/smart/filters:no_upscale()/1024px-Bulldog_inglese-cf544d354159462c8c0d93db5f1adbe6.jpg')
dog10.main_photo.attach(io: file10, filename: 'dog.png', content_type: 'image/png')
puts 'att main_photo dog 10'

dog11 = Dog.create!(
  name: Faker::Creature::Dog.name,
  gender: Faker::Creature::Dog.gender,
  breed: :bulldog,
  age: 7,
  size: :medium,
  user: [ofek, deborah, luke, daniel].sample
)
file11 = URI.open('https://www.k9web.com/wp-content/uploads/2021/01/english-bulldog-on-a-garden-smiling-780x519.jpg')
dog11.main_photo.attach(io: file11, filename: 'dog.png', content_type: 'image/png')
puts 'att main_photo dog 11'

dog12 = Dog.create!(
  name: Faker::Creature::Dog.name,
  gender: Faker::Creature::Dog.gender,
  breed: "german shepherd",
  age: 4,
  size: :big,
  user: [ofek, deborah, luke, daniel].sample
)
file12 = URI.open('https://dogtime.com/assets/uploads/gallery/german-shepherd-dog-breed-pictures/standing-7.jpg')
dog12.main_photo.attach(io: file12, filename: 'dog.png', content_type: 'image/png')
puts 'att main_photo dog 12'

dog13 = Dog.create!(
  name: Faker::Creature::Dog.name,
  gender: Faker::Creature::Dog.gender,
  breed: "german shepherd",
  age: 8,
  size: :big,
  user: [ofek, deborah, luke, daniel].sample
)
file13 = URI.open('https://www.akc.org/wp-content/uploads/2016/06/German-Shepherd-Dog-laying-down-in-the-backyard.jpeg')
dog13.main_photo.attach(io: file13, filename: 'dog.png', content_type: 'image/png')
puts 'att main_photo dog 13'

dog14 = Dog.create!(
  name: Faker::Creature::Dog.name,
  gender: Faker::Creature::Dog.gender,
  breed: "greyhound",
  age: 3,
  size: :medium,
  user: [ofek, deborah, luke, daniel].sample
)
file14 = URI.open('https://cdn.pixabay.com/photo/2020/07/05/14/43/greyhounds-5373255_1280.jpg')
dog14.main_photo.attach(io: file14, filename: 'dog.png', content_type: 'image/png')
puts 'att main_photo dog 14'

dog15 = Dog.create!(
  name: Faker::Creature::Dog.name,
  gender: Faker::Creature::Dog.gender,
  breed: :boxer,
  age: 1,
  size: :small,
  user: [ofek, deborah, luke, daniel].sample
)
file15 = URI.open('https://www.akc.org/wp-content/uploads/2021/01/Boxer-puppy-sitting-in-the-grass.null_.jpg')
dog15.main_photo.attach(io: file15, filename: 'dog.png', content_type: 'image/png')
puts 'att main_photo dog 15'
puts '15 dogs created'

# ---- creating 10 parks ----

puts 'creating parks'

hayarkon = Park.create!(
  name: 'Ha-Yarkon dog park, Tel-Aviv',
  location: 'Hayarkon park Tel Aviv'
)

file1 = URI.open('https://humaneheroes.org/wp-content/uploads/2019/09/txhh_best-practices-when-taking-dog-park.png')

hayarkon.photo.attach(io: file1, filename: 'park.png', content_type: 'image/png')
puts 'att photo park 1'

park2 = Park.create!(
  name: 'kiryat sefer dog park, Tel-Aviv',
  location: 'kiryat sefer garden Tel Aviv'
)
file2 = URI.open('https://static.timesofisrael.com/www/uploads/2016/08/F150618MA013-640x400.jpg')
park2.photo.attach(io: file2, filename: 'park.png', content_type: 'image/png')
puts 'att photo park 2'

independence = Park.create!(
  name: 'The independence dog park, Tel-Aviv',
  location: 'the independence park Tel Aviv'
)

file3 = URI.open('https://media.istockphoto.com/photos/dogs-playing-at-public-park-picture-id1210828938?k=20&m=1210828938&s=612x612&w=0&h=A0iF7IGhJryX35xgP4jCgiG0vIvUsduUTxQmlL2boVc=')
independence.photo.attach(io: file3, filename: 'park.png', content_type: 'image/png')
puts 'att photo park 3'

park4 = Park.create!(
  name: 'Frisheman dog park, Tel-Aviv',
  location: 'frisheman Tel Aviv'
)

file4 = URI.open('https://media.istockphoto.com/photos/five-cute-dogs-lined-up-in-a-row-picture-id468341718?k=20&m=468341718&s=612x612&w=0&h=Hm_KonfznJ_0NHvY7I-PpaLuaoik7CXRYdWn4dzH0BI=')
park4.photo.attach(io: file4, filename: 'park.png', content_type: 'image/png')
puts 'att photo park 4'

park5 = Park.create!(
  name: 'Arison Dog Park, Tel-Aviv',
  location: 'arison tel aviv'
)
file5 = URI.open('https://media.istockphoto.com/photos/dogs-running-with-black-dog-off-ground-picture-id1143172074?k=20&m=1143172074&s=612x612&w=0&h=Eey7FCx0CavXyGlczHRX3MWHcSSEIh2hnfYf74S1XUA=')
park5.photo.attach(io: file5, filename: 'park.png', content_type: 'image/png')
puts 'att photo park 5'

park6 = Park.create!(
  name: 'Gan meir Dog Park, Tel-Aviv',
  location: 'gan meir Tel Aviv'
)
file6 = URI.open('https://media.istockphoto.com/photos/golden-retriever-having-a-drink-picture-id946655044?k=20&m=946655044&s=612x612&w=0&h=tXumZN9KGJZkc6ObHx0dfVOs_wP-T61axybQlH7UjL0=')
park6.photo.attach(io: file6, filename: 'park.png', content_type: 'image/png')
puts 'att photo park 6'

park7 = Park.create!(
  name: 'Dvora baron Dog Park, Tel-Aviv',
  location: 'dvora baron garden Tel Aviv'
)
file7 = URI.open('https://media.istockphoto.com/photos/dogs-joyfully-play-and-run-in-dog-park-picture-id1326514093?k=20&m=1326514093&s=612x612&w=0&h=N0o_3Ui6zQdyNiFWqTSoCbvn-brbjx4x2zCUFHRcQ_s=')
park7.photo.attach(io: file7, filename: 'park.png', content_type: 'image/png')
puts 'att photo park 7'

park8 = Park.create!(
  name: 'Sarona Dog park, Tel-Aviv',
  location: 'sarona park Tel Aviv'
)
file8 = URI.open('https://media.istockphoto.com/photos/happy-dog-playing-at-the-park-picture-id1223104509?k=20&m=1223104509&s=612x612&w=0&h=WrNl1LIWbEpreTemWN4Tu8c1fivbtkpCjSnttFSgJGg=')
park8.photo.attach(io: file8, filename: 'park.png', content_type: 'image/png')
puts 'att photo park 8'

park9 = Park.create!(
  name: 'Dubnov Dog Park, Tel-Aviv',
  location: 'dubnov Tel Aviv'
)
file9 = URI.open('https://media.istockphoto.com/photos/dogs-playing-with-dog-runs-picture-id1293404176?k=20&m=1293404176&s=612x612&w=0&h=0AjeIzUc0cGSWmcwSXgGRbO7wqn72rSQRPrnld9fB3M=')
park9.photo.attach(io: file9, filename: 'park.png', content_type: 'image/png')
puts 'att photo park 9'

park10 = Park.create!(
  name: 'Zeev garden dog park, Tel-Aviv',
  location: 'zeev garden Tel Aviv'
)
file10 = URI.open('https://d34c09ztlk5mrb.cloudfront.net/cunningham-recreation/d2sacxxyngi6cb_cloudfront_net/Dog-Park-Image_183d17ce614a305ef7e14498bef98c4b.jpg')
park10.photo.attach(io: file10, filename: 'park.png', content_type: 'image/png')
puts 'att photo park 10'

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

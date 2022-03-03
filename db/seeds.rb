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
file3 = URI.open('https://media.istockphoto.com/photos/dogs-playing-at-public-park-picture-id1210828938?k=20&m=1210828938&s=612x612&w=0&h=A0iF7IGhJryX35xgP4jCgiG0vIvUsduUTxQmlL2boVc=')
park3.photo.attach(io: file3, filename: 'park.png', content_type: 'image/png')

park4 = Park.create!(
  name: 'Frisheman dog park, Tel-Aviv',
  location: 'frisheman Tel Aviv'
)
file4 = URI.open('https://media.istockphoto.com/photos/five-cute-dogs-lined-up-in-a-row-picture-id468341718?k=20&m=468341718&s=612x612&w=0&h=Hm_KonfznJ_0NHvY7I-PpaLuaoik7CXRYdWn4dzH0BI=')
park4.photo.attach(io: file4, filename: 'park.png', content_type: 'image/png')

park5 = Park.create!(
  name: 'Arison Dog Park, Tel-Aviv',
  location: 'arison tel aviv'
)
file5 = URI.open('https://media.istockphoto.com/photos/dogs-running-with-black-dog-off-ground-picture-id1143172074?k=20&m=1143172074&s=612x612&w=0&h=Eey7FCx0CavXyGlczHRX3MWHcSSEIh2hnfYf74S1XUA=')
park5.photo.attach(io: file5, filename: 'park.png', content_type: 'image/png')

park6 = Park.create!(
  name: 'Gan meir Dog Park, Tel-Aviv',
  location: 'gan meir Tel Aviv'
)
file6 = URI.open('https://media.istockphoto.com/photos/golden-retriever-having-a-drink-picture-id946655044?k=20&m=946655044&s=612x612&w=0&h=tXumZN9KGJZkc6ObHx0dfVOs_wP-T61axybQlH7UjL0=')
park6.photo.attach(io: file6, filename: 'park.png', content_type: 'image/png')

park7 = Park.create!(
  name: 'Dvora baron Dog Park, Tel-Aviv',
  location: 'dvora baron garden Tel Aviv'
)
file7 = URI.open('https://media.istockphoto.com/photos/dogs-joyfully-play-and-run-in-dog-park-picture-id1326514093?k=20&m=1326514093&s=612x612&w=0&h=N0o_3Ui6zQdyNiFWqTSoCbvn-brbjx4x2zCUFHRcQ_s=')
park7.photo.attach(io: file7, filename: 'park.png', content_type: 'image/png')

park8 = Park.create!(
  name: 'Sarona Dog park, Tel-Aviv',
  location: 'sarona park Tel Aviv'
)
file8 = URI.open('https://media.istockphoto.com/photos/happy-dog-playing-at-the-park-picture-id1223104509?k=20&m=1223104509&s=612x612&w=0&h=WrNl1LIWbEpreTemWN4Tu8c1fivbtkpCjSnttFSgJGg=')
park8.photo.attach(io: file8, filename: 'park.png', content_type: 'image/png')

park9 = Park.create!(
  name: 'Dubnov Dog Park, Tel-Aviv',
  location: 'dubnov Tel Aviv'
)
file9 = URI.open('https://media.istockphoto.com/photos/dogs-playing-with-dog-runs-picture-id1293404176?k=20&m=1293404176&s=612x612&w=0&h=0AjeIzUc0cGSWmcwSXgGRbO7wqn72rSQRPrnld9fB3M=')
park9.photo.attach(io: file9, filename: 'park.png', content_type: 'image/png')

park10 = Park.create!(
  name: 'Zeev garden dog park, Tel-Aviv',
  location: 'zeev garden Tel Aviv'
)
file10 = URI.open('https://media.istockphoto.com/photos/dogs-at-fenced-dog-park-picture-id537238988?k=20&m=537238988&s=612x612&w=0&h=gm_Syzfawfjgz6M36-t_0Wng7HlnETBsApDJbGBMjh8=x')
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

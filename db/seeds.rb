# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

Movie.destroy_all
User.destroy_all

puts "Creating marvelous movies"

movie1 = Movie.create(
  title: "Aladdin",
  description: "A kind-hearted street urchin Aladdin vies for the love of the beautiful princess Jasmine, the princess of Agrabah. When he finds a magic lamp, he uses the genie's magic power to make himself a prince in order to marry her. He's also on a mission to stop the powerful Jafar who plots to steal the magic lamp that could make his deepest wishes come true.",
  genre: "Adventure, Family, Fantasy, Musical, Romance",
  rating: 6.9,
  year: "2019",
  duration: "2h 8min",
  director: "Guy Ritchie"
)

file1 = URI.open('https://m.media-amazon.com/images/M/MV5BMjQ2ODIyMjY4MF5BMl5BanBnXkFtZTgwNzY4ODI2NzM@._V1_UX182_CR0,0,182,268_AL_.jpg')
movie1.photo.attach(io: file1, filename: 'aladin.jpg', content_type: 'image/jpg')



movie2 = Movie.create(
  title: "Lion King",
  description: "In Africa, the lion cub Simba is the pride and joy of his parents King Mufasa and Queen Sarabi. Mufasa prepares Simba to be the next king of the jungle. However, the naive Simba believes in his envious uncle Scar that wants to kill Mufasa and Simba to become the next king. He lures Simba and his friend Nala to go to a forbidden place and they are attacked by hyenas but they are rescued by Mufasa. Then Scar plots another scheme to kill Mufasa and Simba but the cub escapes alive and leaves the kingdom believing he was responsible for the death of his father. Now Scar becomes the king supported by the evil hyenas while Simba grows in a distant land. Sometime later, Nala meets Simba and tells that the kingdom has become a creepy wasteland. What will Simba do?",
  genre: "Animation, Adventure, Drama, Family, Musical",
  rating: 6.9,
  year: "2019",
  duration: "1h 58min",
  director: "Jon Favreau"
)

file2 = URI.open('https://m.media-amazon.com/images/M/MV5BMjIwMjE1Nzc4NV5BMl5BanBnXkFtZTgwNDg4OTA1NzM@._V1_UX182_CR0,0,182,268_AL_.jpg')
movie2.photo.attach(io: file2, filename: 'lion_king.jpg', content_type: 'image/jpg')





movie3 = Movie.create(
  title: "Despicable Me",
  description: "In a happy suburban neighborhood surrounded by white picket fences with flowering rose bushes, sits a black house with a dead lawn. Unbeknownst to the neighbors, hidden beneath this house is a vast secret hideout. Surrounded by a small army of minions, we discover Gru (Steve Carell), planning the biggest heist in the history of the world. He is going to steal the moon. Gru delights in all things wicked. Armed with his arsenal of shrink rays, freeze rays, and battle-ready vehicles for land and air, he vanquishes all who stand in his way. Until the day he encounters the immense will of three little orphaned girls who look at him and see something that no one else has ever seen: a potential Dad. The world's greatest villain has just met his greatest challenge: three little girls named Margo (Miranda Cosgrove), Edith (Dana Gaier), and Agnes (Elsie Fisher).",
  genre: "Animation, Comedy, Crime, Family, Fantasy",
  rating: 7.6,
  year: "2010",
  duration: "1h 35min",
  director: "Pierre Coffin, Chris Renaud"
)

file3 = URI.open('https://m.media-amazon.com/images/M/MV5BMTY3NjY0MTQ0Nl5BMl5BanBnXkFtZTcwMzQ2MTc0Mw@@._V1_UX182_CR0,0,182,268_AL_.jpg')
movie3.photo.attach(io: file3, filename: 'despicable_me.jpg', content_type: 'image/jpg')




movie4 = Movie.create(
  title: "Bruce Almighty",
  description: "Bruce Nolan, a television reporter in Buffalo, N.Y., is discontented with almost everything in life despite his popularity and the love of his girlfriend Grace . At the end of the worst day of his life, Bruce angrily ridicules and rages against God and God responds. God appears in human form and, endowing Bruce with divine powers, challenges Bruce to take on the big job to see if he can do it any better.",
  genre: "Comedy, Fantasy",
  rating: 6.8,
  year: "2003",
  duration: "1h 41min",
  director: "Tom Shadyac"
)

file4 = URI.open('https://m.media-amazon.com/images/M/MV5BNzMyZDhiZDUtYWUyMi00ZDQxLWE4NDQtMWFlMjI1YjVjMjZiXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg')
movie4.photo.attach(io: file4, filename: 'bruce_almighty.jpg', content_type: 'image/jpg')




puts "Creating fake userssss"

user1 = User.create(
  first_name: "Avalon",
  last_name: "Horst",
  email: "avalon@gmail.com",
  password: "password"
)



puts "Finished!"

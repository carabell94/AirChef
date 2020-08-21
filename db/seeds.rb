# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

cuisines = %w(Mexican Italian Indian Cajun Soul Thai Greek Chinese Lebanese Japanese American Moroccan Mediterranean French Spanish German Korean Vietnamese Turkish Caribbean)
london_areas = ['Isle of Dogs', 'Belgravia', 'Blackheath', 'East Finchley', 'Nothing Hill', 'Fulham', 'Richmond', 'Kensington', 'Chelsea', 'Streatham', 'Hammersmith', 'Herne Hill', 'Hampstead', 'Islington', 'Clapham', 'Wandsworth', 'Bethnal Green', 'Crystal Palace', 'Camden', 'Hackney', 'Bermondsey', 'Brixton', 'Peckham', 'Leyton']

cara_user = User.create!(nickname: 'Cara', email: "cara@gmail.com", password: "123456")

lu_user = User.create!(nickname: 'Lu', email: "lu@gmail.com", password: "123456")

shaun_user = User.create!(nickname: "Shaun", email: "shaun@gmail.com", password: "123456")

fernando_user = User.create!(nickname: 'Fer', email: "fernando@gmail.com", password: "123456")

# 10.times do
#   user = User.create(
#     email: Faker::Internet.email,
#     password: '123456'
#   )
#   user.save!
# end

julio = Chef.create!(name: "Julio",  bio: "Julio's cooking is as great as his moustache. He is a whizz in the kitchen, specialising in Spanish-themed feasts.", years_experience: 10, hourly_rate: 10, location: "Mayfair, London", cuisines: "Spanish, Mexican, European" )

toni = Chef.create!(name: "Toni", bio: 'Bubbly Toni is a whizz in the kitchen.',  years_experience: 12, hourly_rate: 20, location: "Clapham, London", cuisines: "German, American, British")

arthur = Chef.create!(name: "Arthur",  bio: "Don't let his calm exterior fool you, Arthur has been whipping up French delicacies since he was old enough to reach the counter-top. ", years_experience: 15, hourly_rate: 25, location: "Hammersmith, London", cuisines: "French, European, Japanese")

piotr = Chef.create!(name: "Piotr", bio: 'Trust Piotr for delicious Polish cuisine.',  years_experience: 15, hourly_rate: 25, location: "Westminster, London", cuisines: "Polish, European, British")

rahul = Chef.create!(name: "Rahul",  bio: 'Rahul is the definition of service with a smile.', years_experience: 17, hourly_rate: 30, location: "Kensington, London", cuisines: "Indian, British, Sri Lankan")

lucy = Chef.create!(name: "Lucy",  bio: "She may be young, but Lucy's food tastes like she has been cooking for years and years.", years_experience: 10, hourly_rate: 20, location: "Dulwich, London", cuisines: "Caribbean, Thai, Italian")

nicolas = Chef.create!(name: "Nicolas",  bio: 'Unbelievably skilled in the kitchen.', years_experience: 5, hourly_rate: 12, location: "Shoreditch, London", cuisines: "European, Italian, Malaysian")

alex = Chef.create!(name: "Alex",  bio: 'Unbelievably skilled in the kitchen.', years_experience: 20, hourly_rate: 35, location: "Westminster, London", cuisines: "French, Italian, Mexican")

rebecca = Chef.create!(name: "Rebecca", bio: 'Unbelievably skilled in the kitchen.',  years_experience: 20, hourly_rate: 40, location: "Chelsea, London", cuisines: "Korean, Italian, Spanish")

leonard = Chef.create!(name: "Leonard", bio: 'Unbelievably skilled in the kitchen.',  years_experience:20, hourly_rate: 100, location: "Covent Garden, London", cuisines: "Vietnamese, Italian, Mexican")

jakob = Chef.create!(name: "Jakob", bio: 'Unbelievably skilled in the kitchen.',  years_experience:20, hourly_rate: 100, location: "Holland Park, London", cuisines: "French, Italian, Mexican")

lu = Chef.create!(name: "Lu",  bio: 'Unbelievably skilled in the kitchen.', years_experience: 10, hourly_rate: 35, location: "Camden, London", cuisines:"Italian, South American, Malaysian")

cara = Chef.create!(name: "Cara",  bio: 'Unbelievably skilled in the kitchen.', years_experience: 30, hourly_rate: 60, location: "Paddington, London", cuisines: "Irish, Thai, Japanese")

fernando = Chef.create!(name: "Fernando",  bio: 'Unbelievably skilled in the kitchen.', years_experience: 1, hourly_rate: 15, location: "Fulham, London", cuisines: "Spanish, Lebanese, Mediterranean")

shaun = Chef.create!(name: "Shaun",  bio: 'Unbelievably skilled in the kitchen.', years_experience: 9, hourly_rate: 22, location: "Clerkenwell, London", cuisines: "British, Seafood, Chinese")

# 20.times do
#   chef = Chef.create(
#     name: Faker::Name.first_name,
#     bio: Faker::Lorem.words(number: rand(4..30)).join(' '),
#     years_experience: rand(1..30),
#     hourly_rate: rand(10..100),
#     location: "#{london_areas.sample}, London",
#     cuisines: cuisines.sample(rand(1..6)).join(', ')
#     )
#   p chef.cuisines
#   chef.save!
# end

15.times do
  booking = Booking.create(
    user: User.find_by_id(rand(1..4)),
    date: Faker::Date.between(from: '2020-08-01', to: '2020-08-19'),
    duration: rand(5..10),
    guests: rand(2..50),
    location: london_areas.sample,
    chef: Chef.find_by_id(rand(1..15)),
    cuisine: cuisines.sample
    )
  booking.save!
end

count = 0

# 50.times do
#   review = Review.create(
#     rating: rand(1..5),
#     content: Faker::Lorem.words(number: rand(10..50)).join(' '),
#     booking: count = count + 1
#     )
#   review.save!
# end

Booking.all.each do |book|
  review = Review.create(
    rating: rand(1..5),
    content: Faker::Lorem.words(number: rand(10..50)).join(' '),
    booking: Booking.find_by_id(book.id)
  )
  review.save!
end

# user1 = User.create!(email: "user1@user1.com", password: "123456")

# user2 = User.create!(email: "user2@user2.com", password: "123456")

# private_dinner = Booking.create!(user: User.find_by_id(rand(1..4)), date:Time.now, duration: 5, guests: 2, location:"Madrid", cuisine: "Spanish", chef: Chef.find_by_id(rand(1..10)))

# kids_party = Booking.create!(user: user2, date:Time.now, duration: 5, guests: 30, location:"London", cuisine: "French", chef: arthur)

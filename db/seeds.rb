# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(email: "user1@user1.com", password: "123456")

user2 = User.create!(email: "user2@user2.com", password: "123456")

cara_user = User.create!(email: "cara@gmail.com", password: "123456")

lu_user = User.create!(email: "lu@gmail.com", password: "123456")

shaun_user = User.create!(email: "shaun@gmail.com", password: "123456")

fernando_user = User.create!(email: "fernando@gmail.com", password: "123456")

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

private_dinner = Booking.create!(user: user1, date:Time.now, duration: 5, guests: 2, location:"Madrid", cuisine: "Spanish", chef: julio)

kids_party = Booking.create!(user: user2, date:Time.now, duration: 5, guests: 30, location:"London", cuisine: "French", chef: arthur)























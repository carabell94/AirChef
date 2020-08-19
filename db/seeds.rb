# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(email: "user1@user1.com", password: "123456")

user2 = User.create!(email: "user2@user2.com", password: "123456")

julio = Chef.create!(name: "Julio",  bio: "Julio's cooking is as great as his moustache. He is a whizz in the kitchen, specialising in Spanish-themed feasts.", years_experience: 10, hourly_rate: 10, location: "Madrid", cuisines: "Spanish" )

toni = Chef.create!(name: "Toni", bio: 'Bubbly Toni is a whizz in the kitchen.',  years_experience: 12, hourly_rate: 20, location: "Berlin", cuisines:"German")

arthur = Chef.create!(name: "Arthur",  bio: "Don't let his calm exterior fool you, Arthur has been whipping up French delicacies since he was old enough to reach the counter-top. ", years_experience: 15, hourly_rate: 25, location: "London", cuisines:"French")

piotr = Chef.create!(name: "Piotr", bio: 'Trust Piotr for delicious Polish cuisine.',  years_experience: 15, hourly_rate: 25, location: "Krakow", cuisines:"Polish")

rahul = Chef.create!(name: "Rahul",  bio: 'Rahul is the definition of service with a smile.', years_experience: 17, hourly_rate: 30, location: "London", cuisines: "Indian, British")

lucy = Chef.create!(name: "Lucy",  bio: "She may be young, but Lucy's food tastes like she has been cooking for years and years.", years_experience: 10, hourly_rate: 20, location: "London", cuisines:"British")

nicolas = Chef.create!(name: "Nicolas",  bio: 'Sample Bio for Chef Goes Here', years_experience: 5, hourly_rate: 12, location: "Paris", cuisines: "Eastern European, Italian")

alex = Chef.create!(name: "Alex",  bio: 'Sample Bio for Chef Goes Here', years_experience: 20, hourly_rate: 35, location: "Monaco", cuisines: "French, Italian, Mexican")

rebecca = Chef.create!(name: "Rebecca", bio: 'Sample Bio for Chef Goes Here',  years_experience: 20, hourly_rate: 40, location: "Rome", cuisines:"French, Italian")

leonard = Chef.create!(name: "Leonard", bio: 'Sample Bio for Chef Goes Here',  years_experience:20, hourly_rate: 100, location: "Los Angeles", cuisines: "French, Italian, Mexican")

jakob = Chef.create!(name: "Jakob", bio: 'Sample Bio for Chef Goes Here',  years_experience:20, hourly_rate: 100, location: "Ibiza", cuisines: "French, Italian, Mexican")

lu = Chef.create!(name: "Lu",  bio: 'Sample Bio for Chef Goes Here', years_experience: 10, hourly_rate: 35, location: "Paris", cuisines:"French, Italian")

cara = Chef.create!(name: "Cara",  bio: 'Sample Bio for Chef Goes Here', years_experience: 30, hourly_rate: 60, location: "Belfast", cuisines:"Irish")

fernando = Chef.create!(name: "Fernando",  bio: 'Sample Bio for Chef Goes Here', years_experience: 1, hourly_rate: 15, location: "Valencia", cuisines: "Spanish")

shaun = Chef.create!(name: "Shaun",  bio: 'Sample Bio for Chef Goes Here', years_experience: 9, hourly_rate: 22, location: "London", cuisines: "British")

private_dinner = Booking.create!(user: user1, date:Time.now, duration: 5, guests: 2, location:"Madrid", cuisine: "Spanish", chef: julio)

kids_party = Booking.create!(user: user2, date:Time.now, duration: 5, guests: 30, location:"London", cuisine: "French", chef: arthur)






















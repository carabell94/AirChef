# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(email: "user1@user1.com", password: "123456")

user2 = User.create!(email: "user2@user2.com", password: "123456")

ned = Chef.create!(name: "Ned",  bio: 'Sample Bio for Chef Goes Here', years_experience: 10, hourly_rate: 10, location: "London", cuisines: "Japanese, British, Italian" )

rosaline = Chef.create!(name: "Rosaline", bio: 'Sample Bio for Chef Goes Here',  years_experience: 12, hourly_rate: 20, location: "Madrid", cuisines:"Spanish")

warner = Chef.create!(name: "Warner",  bio: 'Sample Bio for Chef Goes Here', years_experience: 15, hourly_rate: 25, location: "New York", cuisines:"Modern American")

yael = Chef.create!(name: "Yael", bio: 'Sample Bio for Chef Goes Here',  years_experience: 15, hourly_rate: 25, location: "Tel Aviv", cuisines:"Middle Eastern")

mila = Chef.create!(name: "Mila",  bio: 'Sample Bio for Chef Goes Here', years_experience: 17, hourly_rate: 30, location: "Sofia", cuisines:"Bulgarian")

lean = Chef.create!(name: "Lean",  bio: 'Sample Bio for Chef Goes Here', years_experience: 10, hourly_rate: 20, location: "Manchester", cuisines:"British, Irish")

qiana = Chef.create!(name: "Qiana",  bio: 'Sample Bio for Chef Goes Here', years_experience: 5, hourly_rate: 12, location: "Budapest", cuisines:"Eastern European, Italian")

rosenda = Chef.create!(name: "Rosenda",  bio: 'Sample Bio for Chef Goes Here', years_experience: 20, hourly_rate: 35, location: "Monaco", cuisines:"French, Italian, Mexican")

kip = Chef.create!(name: "Kip", bio: 'Sample Bio for Chef Goes Here',  years_experience: 20, hourly_rate: 40, location: "Rome", cuisines:"French, Italian")

troy = Chef.create!(name: "Troy", bio: 'Sample Bio for Chef Goes Here',  years_experience:20, hourly_rate: 45, location: "Los Angeles", cuisines:"French, Mexican, Italian")

dani = Chef.create!(name: "Dani",  bio: 'Sample Bio for Chef Goes Here', years_experience: 10, hourly_rate: 35, location: "Paris", cuisines:"French, Italian")

cara = Chef.create!(name: "Cara",  bio: 'Sample Bio for Chef Goes Here', years_experience: 30, hourly_rate: 60, location: "Belfast", cuisines:"Irish")

fernando = Chef.create!(name: "Fernando",  bio: 'Sample Bio for Chef Goes Here', years_experience: 1, hourly_rate: 15, location: "Valencia", cuisines:"Spanish")

shaun = Chef.create!(name: "Shaun",  bio: 'Sample Bio for Chef Goes Here', years_experience: 9, hourly_rate: 22, location: "London", cuisines:"British")

private_dinner = Booking.create!(user: user1, date:Time.now, duration: 5, guests: 2, location:"london", cuisine: "Italian", chef:Chef.find(12))

kids_party = Booking.create!(user: user2, date:Time.now, duration: 5, guests: 30, location:"london", cuisine: "French", chef:Chef.find(13))






















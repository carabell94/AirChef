# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ned = Chef.create(name: "Ned",  years_experience:10, hourly_rate:10, location: "London", cuisines:["Japanise", "British", "Italian"])

rosaline = Chef.create(name: "Rosaline",  years_experience:12, hourly_rate:20, location: "Madrid", cuisines:"Spanish")

warner = Chef.create(name: "Warner",  years_experience:15, hourly_rate:25, location: "New York", cuisines:"Modern American")

yael = Chef.create(name: "Yael",  years_experience:15, hourly_rate:25, location: "Tel Aviv", cuisines:"Middle Eastern")

mila = Chef.create(name: "Mila",  years_experience:17, hourly_rate:30, location: "Sofia", cuisines:"Bulgarian")

lean = Chef.create(name: "Lean",  years_experience:10, hourly_rate:20, location: "Manchester", cuisines:["British", "Irish"])

qiana = Chef.create(name: "Qiana",  years_experience:5, hourly_rate:12, location: "Budapest", cuisines:["Eastern European", "Italian"])

rosenda = Chef.create(name: "Rosenda",  years_experience:20, hourly_rate:35, location: "Monaco", cuisines:["French", "Italian", "Mexican"])

kip = Chef.create(name: "Kip",  years_experience:20, hourly_rate:40, location: "Rome", cuisines:["French", "Italian"])

troy = Chef.create(name: "Troy",  years_experience:20, hourly_rate:45, location: "Los Angeles", cuisines:["French", "Mexican", "Italian"])

dani = Chef.create(name: "Dani",  years_experience:10, hourly_rate:35, location: "Paris", cuisines:["French", "Italian"])

cara = Chef.create(name: "Cara",  years_experience:30, hourly_rate:60, location: "Dublin", cuisines:"Irish")

fernando = Chef.create(name: "Fernando",  years_experience:1, hourly_rate:15, location: "Valencia", cuisines:"Spanish")

shaun = Chef.create(name: "Shaun",  years_experience:9, hourly_rate:22, location: "Mayfair", cuisines:"British")

# private_dinner = Booking.create(user:User.find(1), date:Time.now, guests: 2, location:"london", cuisine: "Italian", chef:Chef.find(12))

# kids_party = Booking.create(user:User.find(2), date:Time.now, guests: 30, location:"london", cuisine: "French", chef:Chef.find(13))






















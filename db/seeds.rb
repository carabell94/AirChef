# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

fernando = User.create(name: 'Fernando Requeni', email: 'ferrenac@icloud.com', password: '123456789', chef: false)

federico = User.create(name: 'Federico Denipoti', email: 'federico.denipoti@msn.com', password: '123456789', chef: true, years_experience: 5, location: 'London', cuisine: 'british', hourly_rate: 20)

new_booking = Booking.create(user_id: 2, date: 11112020, guests: 5, booked_user_id: 3, location: 'London', cuisine: 'japanese', review_rating: 4.3, review_content: 'great chef')

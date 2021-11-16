# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Booking.delete_all
House.delete_all
User.delete_all

user1 = User.create(email: 'filipo@gmail.com', password: 'la pizza he molto buona')
user2 = User.create(email: 'carles@gmail.com', password: '123456')
user3 = User.create(email: 'max@gmail.com', password: '123456')
user4 = User.create(email: 'alejandro@gmail.com', password: '123456')

house1 = House.create(name: 'Luxury villa', description: "very nice villa in catalunya with amazing views", user: user1,
                      address: "papichulo, 45", price: 7000, country: 'Catalunya')
house2 = House.create(name: 'Mansion', description: "very nice villa in Brazil with amazing views", user: user2,
                      address: "papichulo, 42", price: 7000, country: 'Brazil')
house3 = House.create(name: 'Luxury villa', description: "very nice villa in Belgium with amazing views", user: user3,
                      address: "papichulo, 43", price: 7000, country: 'Belgium')
house4 = House.create(name: 'Luxury villa', description: "very nice villa in Italy with amazing views", user: user4,
                      address: "papichulo, 44", price: 7000, country: 'Italy')
house5 = House.create(name: 'Luxury villa', description: "very nice villa in Mexico with amazing views", user: user1,
                      address: "papichulo, 47", price: 7000, country: 'Mexico')

photo1 = URI.open('https://p4.wallpaperbetter.com/wallpaper/76/280/48/architecture-building-design-house-wallpaper-preview.jpg')
photo2 = URI.open('https://wallpaperaccess.com/full/5089971.jpg')
photo3 = URI.open('https://p4.wallpaperbetter.com/wallpaper/79/352/53/modern-architecture-nature-landscape-wallpaper-preview.jpg')
photo4 = URI.open('https://wallpaperaccess.com/full/1126781.jpg')
photo5 = URI.open('https://i.pinimg.com/736x/b3/7b/af/b37baf64e146e19e2009eba87c8fba66.jpg')
photo6 = URI.open('https://aws.admagazine.com/prod/designs/v1/assets/620x413/68136.jpg')
photo7 = URI.open('https://casaydiseno.com/wp-content/uploads/2016/07/decoracion.patios-lujosos.modernos.jpg')

house1.photos.attach(io: photo1, filename: 'nes.png', content_type: 'image/png')
house1.photos.attach(io: photo6, filename: 'nes.png', content_type: 'image/png')
house1.photos.attach(io: photo7, filename: 'nes.png', content_type: 'image/png')
house2.photos.attach(io: photo2, filename: 'nes.png', content_type: 'image/png')
house3.photos.attach(io: photo3, filename: 'nes.png', content_type: 'image/png')
house4.photos.attach(io: photo4, filename: 'nes.png', content_type: 'image/png')
house5.photos.attach(io: photo5, filename: 'nes.png', content_type: 'image/png')

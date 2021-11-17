require "open-uri"
require "byebug"

Booking.delete_all
House.delete_all
User.delete_all
puts "DB clean"

user1 = User.create(email: 'filipo@gmail.com', password: 'la pizza he molto buona')
user2 = User.create(email: 'carles@gmail.com', password: '123456')
user3 = User.create(email: 'max@gmail.com', password: '123456')
user4 = User.create(email: 'alejandro@gmail.com', password: '123456')

photo1 = URI.open('https://p4.wallpaperbetter.com/wallpaper/76/280/48/architecture-building-design-house-wallpaper-preview.jpg')
photo2 = URI.open('https://wallpaperaccess.com/full/5089971.jpg')
photo3 = URI.open('https://p4.wallpaperbetter.com/wallpaper/79/352/53/modern-architecture-nature-landscape-wallpaper-preview.jpg')
photo4 = URI.open('https://wallpaperaccess.com/full/1126781.jpg')
photo5 = URI.open('https://i.pinimg.com/736x/b3/7b/af/b37baf64e146e19e2009eba87c8fba66.jpg')
photo6 = URI.open('https://aws.admagazine.com/prod/designs/v1/assets/620x413/68136.jpg')
photo7 = URI.open('https://casaydiseno.com/wp-content/uploads/2016/07/decoracion.patios-lujosos.modernos.jpg')
photo8 = URI.open("https://foreignbuyerswatch.com/wp-content/uploads/2019/07/Capture-d%E2%80%99e%CC%81cran-2019-07-26-a%CC%80-13.14.52.png")
photo9 = URI.open("http://www.keyrealestates.com/cms/wp-content/uploads/2018/10/luxury-houses-for-sale-in-marbella-spain-1024x576.jpg")
photo10 = URI.open("https://wallpaperaccess.com/full/1126781.jpg")
photo11 = URI.open("https://i.pinimg.com/736x/b3/7b/af/b37baf64e146e19e2009eba87c8fba66.jpg")
photo12 = URI.open("https://luxury-houses.net/wp-content/uploads/2019/09/Villa-Origami-Luxury-Residence-in-Son-Vida-Mallorca-Spain-1-1024x682.jpg")
photo13 = URI.open("https://pbs.twimg.com/media/CLf3yiPWgAA1-Af.jpg")
photo14 = URI.open("https://i.pinimg.com/originals/fc/7c/a0/fc7ca01c6a74352265781832b7c3711e.jpg")
photo15 = URI.open("https://pbs.twimg.com/media/CLf3yiPWgAA1-Af.jpg")
photo16 = URI.open("https://www.spanishpropertyinsight.com/wp-content/uploads/2020/11/villas-for-sale-spain-1024x682.jpg")
photo17 = URI.open("https://www.miralbo.com/images/articulos/1/g_ukpfqr88n7bzgo2gbm8x.jpg")
photo18 = URI.open("https://img.jamesedition.com/listing_images/2021/03/30/15/47/40/3ec48395-d592-47a7-9903-571653bd013f/je/1000x620xc.jpg")
photo19 = URI.open("https://i.pinimg.com/736x/91/a0/db/91a0db7103713e376e8a27771abff909.jpg")
photo20 = URI.open("https://www.homestratosphere.com/wp-content/uploads/2020/06/luxury-house-july062020-min.jpg")
photo21 = URI.open("http://3.bp.blogspot.com/-nNbYsAVqSRk/UcNbzXPOciI/AAAAAAAAUIg/AACguslzwGo/s1600/Modern_Luxury_House_In_Johannesburg_on_world_of_architecture_01.jpg")
photo22 = URI.open("https://brabbu.com/blog/wp-content/uploads/2013/10/Beverly-Hills-Luxury-Real-Estate.jpg")
puts "finished opening photos"

house1 = House.new(name: 'Luxury Chalet', description: "Amazing modern Chalet in the Italian alps", user: user1,
                      address: "Corso Italia, 70", price: 7500, country: 'Italy')
house1.photos.attach(io: File.open(photo1), filename: 'nes.png', content_type: 'image/png')
house1.photos.attach(io: File.open(photo6), filename: 'nes.png', content_type: 'image/png')
house1.photos.attach(io: File.open(photo7), filename: 'nes.png', content_type: 'image/png')
house1.save

house2 = House.new(name: 'Luxury Mansion', description: "Modern and luxurious Mansion in Italy", user: user2,
                      address: "Viale parioli, 42", price: 9000, country: 'Italy')

house2.photos.attach(io: File.open(photo2), filename: 'nes.png', content_type: 'image/png')
house2.photos.attach(io: File.open(photo8), filename: 'nes.png', content_type: 'image/png')
house2.save

house3 = House.new(name: 'Luxury villa', description: "Ancient Italian villa in Tuscany with amazing view", user: user3, address: "Via di vigna stelluti, 43", price: 5000, country: 'Italy')
house3.photos.attach(io: File.open(photo9), filename: 'nes.png', content_type: 'image/png')
house3.photos.attach(io: File.open(photo10), filename: 'nes.png', content_type: 'image/png')
house3.save

house4 = House.new(name: 'Luxury Apartment', description: "Wonderful apartment in the center of Rome", user: user4, address: "Via del corso, 20", price: 7200, country: 'Italy')
house4.photos.attach(io: File.open(photo11), filename: 'nes.png', content_type: 'image/png')
house4.photos.attach(io: File.open(photo12), filename: 'nes.png', content_type: 'image/png')
house4.save

house5 = House.new(name: 'Luxury villa', description: "Very nice villa in Mexico with amazing view", user: user1,
                      address: "Sierra Alta, Chiapas, Mexico", price: 9200, country: 'México')
house5.photos.attach(io: File.open(photo13), filename: 'nes.png', content_type: 'image/png')
house5.photos.attach(io: File.open(photo14), filename: 'nes.png', content_type: 'image/png')
house5.save

house6 = House.new(name: 'Luxury Apartment', description: "Wonderful modern style apartment", user: user1,
                      address: "Mexico City, Estado de México, Mexico", price: 4000, country: 'México')
house6.photos.attach(io: File.open(photo15), filename: 'nes.png', content_type: 'image/png')
house6.photos.attach(io: File.open(photo16), filename: 'nes.png', content_type: 'image/png')
house6.save

house7 = House.new(name: 'Luxury Mansion', description: "Giant mansion in Mexico with modern design", user: user1,
                      address: "Querétaro City, Querétaro, Mexico", price: 6800, country: 'México')
house7.photos.attach(io: File.open(photo21), filename: 'nes.png', content_type: 'image/png')
house7.photos.attach(io: File.open(photo22), filename: 'nes.png', content_type: 'image/png')
house7.save

house8 = House.new(name: 'Luxury house', description: "Amazing family house in Mexico with a lot of green", user: user1,
                      address: "Monterrey, Nuevo León, Mexico", price: 9800, country: 'México')
house8.photos.attach(io: File.open(photo11), filename: 'nes.png', content_type: 'image/png')
house8.photos.attach(io: File.open(photo12), filename: 'nes.png', content_type: 'image/png')
house8.save

house9 = House.new(name: 'Luxury Villa', description: "Amazing family house in Spain with a lot of green", user: user1,
                      address: "Calle del doctor esquerdo, 70", price: 8800, country: 'Spain')
house9.photos.attach(io: File.open(photo3), filename: 'nes.png', content_type: 'image/png')
house9.photos.attach(io: File.open(photo5), filename: 'nes.png', content_type: 'image/png')
house9.save

house10 = House.new(name: 'Luxury Apartment', description: "Beutiful apartment with modern style", user: user1,
                      address: "Santiago de Compostela, Galicia, Spain", price: 6600, country: 'Spain')
house10.photos.attach(io: File.open(photo15), filename: 'nes.png', content_type: 'image/png')
house10.photos.attach(io: File.open(photo16), filename: 'nes.png', content_type: 'image/png')
house10.save

house11 = House.new(name: 'Luxury Mansion', description: "Enormus mansion with modern design", user: user1,
                      address: "Granada, Andalucía, Spain", price: 4900, country: 'Spain')
house11.photos.attach(io: File.open(photo17), filename: 'nes.png', content_type: 'image/png')
house11.photos.attach(io: File.open(photo18), filename: 'nes.png', content_type: 'image/png')
house11.save

house12 = House.new(name: 'Luxury house', description: "Amazing family house in Spain with a lot of green", user: user1,
                      address: "Valencia, Comunitat Valenciana, Spain", price: 5400, country: 'Spain')
house12.photos.attach(io: File.open(photo19), filename: 'nes.png', content_type: 'image/png')
house12.photos.attach(io: File.open(photo20), filename: 'nes.png', content_type: 'image/png')
house12.save

house13 = House.create(name: 'Luxury house', description: "Amazing family house in Belgium with a lot of green", user: user1,
                      address: "Antwerp, Vlaanderen, Belgium", price: 5800, country: 'Belgium')
house13.photos.attach(io: File.open(photo21), filename: 'nes.png', content_type: 'image/png')
house13.photos.attach(io: File.open(photo22), filename: 'nes.png', content_type: 'image/png')
house13.save

house14 = House.create(name: 'Luxury Villa', description: "Old style villa in the forests of Belgium", user: user1,
                      address: "Berchem, Vlaanderen, Belgium", price: 9000, country: 'Belgium')
house14.photos.attach(io: File.open(photo16), filename: 'nes.png', content_type: 'image/png')
house14.photos.attach(io: File.open(photo10), filename: 'nes.png', content_type: 'image/png')
house14.save

house15 = House.create(name: 'Luxury Mansion', description: "Modern style mansion in Belgium", user: user1,
                      address: "Borgerhout, Vlaanderen, Belgium", price: 7000, country: 'Belgium')
house15.photos.attach(io: File.open(photo11), filename: 'nes.png', content_type: 'image/png')
house15.photos.attach(io: File.open(photo12), filename: 'nes.png', content_type: 'image/png')
house15.save

house16 = House.create(name: 'Luxury Chalet', description: "Newly constructed chalet in Belgium", user: user1,
                      address: "Hoboken, Vlaanderen, Belgium", price: 6000, country: 'Belgium')
house16.photos.attach(io: File.open(photo13), filename: 'nes.png', content_type: 'image/png')
house16.photos.attach(io: File.open(photo5), filename: 'nes.png', content_type: 'image/png')
house16.save

house17 = House.create(name: 'Luxury house', description: "Luxury modern style house in Brazil", user: user1,
                      address: "Brasília, Distrito Federal, Brazil", price: 7000, country: 'Brazil')
house17.photos.attach(io: File.open(photo15), filename: 'nes.png', content_type: 'image/png')
house17.photos.attach(io: File.open(photo16), filename: 'nes.png', content_type: 'image/png')
house17.save

house18 = House.create(name: 'Luxury Villa', description: "Newly constructed Villa in Brazil", user: user1,
                      address: "São Paulo, Brazil", price: 4000, country: 'Brazil')
house18.photos.attach(io: File.open(photo17), filename: 'nes.png', content_type: 'image/png')
house18.photos.attach(io: File.open(photo18), filename: 'nes.png', content_type: 'image/png')
house18.save

house19 = House.create(name: 'Luxury Mansion', description: "Giant mansion in Brazil", user: user1,
                      address: "Lagoa de Dentro, Paraíba, Brazil", price: 8000, country: 'Brazil')
house19.photos.attach(io: File.open(photo3), filename: 'nes.png', content_type: 'image/png')
house19.photos.attach(io: File.open(photo20), filename: 'nes.png', content_type: 'image/png')
house19.save

house20 = House.create(name: 'Luxury Sea house', description: "Luxurious sea house with amazing view", user: user1,
                      address: "Chácara Santa Maria, São Paulo, Brazil", price: 9000, country: 'Brazil')
house20.photos.attach(io: File.open(photo21), filename: 'nes.png', content_type: 'image/png')
house20.photos.attach(io: File.open(photo22), filename: 'nes.png', content_type: 'image/png')
house20.save

house21 = House.create(name: 'Luxury Chalet', description: "Newly constructed chalet in Catalonia", user: user1,
                      address: "Olot, Catalunya, Spain", price: 9000, country: 'Catalonia')
house21.photos.attach(io: File.open(photo11), filename: 'nes.png', content_type: 'image/png')
house21.photos.attach(io: File.open(photo12), filename: 'nes.png', content_type: 'image/png')
house21.save

house22 = House.create(name: 'Luxury Villa', description: "Modern villa in catalonia", user: user1,
                      address: "Cadaqués, Catalunya, Spain", price: 8000, country: 'Catalonia')
house22.photos.attach(io: File.open(photo13), filename: 'nes.png', content_type: 'image/png')
house22.photos.attach(io: File.open(photo14), filename: 'nes.png', content_type: 'image/png')
house22.save

house23 = House.create(name: 'Luxury apartment', description: "Modern style apartment in catalonia", user: user1,
                      address: "Barcelona, Catalunya, Spain", price: 7000, country: 'Catalonia')
house23.photos.attach(io: File.open(photo15), filename: 'nes.png', content_type: 'image/png')
house23.photos.attach(io: File.open(photo4), filename: 'nes.png', content_type: 'image/png')
house23.save

house24 = House.create(name: 'Luxury mansion', description: "Enormous mansion in catalonia", user: user1,
                      address: "Girona, Catalunya, Spain", price: 5000, country: 'Catalonia')
house24.photos.attach(io: File.open(photo17), filename: 'nes.png', content_type: 'image/png')
house24.photos.attach(io: File.open(photo18), filename: 'nes.png', content_type: 'image/png')
house24.save

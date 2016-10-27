City.delete_all
User.delete_all
Post.delete_all


cities = [
  {name: "San Francisco", image_url: "https://cdn.getyourguide.com/niwziy2l9cvz/1XBkFZIKqYw0248uGCuaWG/cc3d1c8fec71b6706ac961b449d2d823/san-francisco-san-francisco-bay-1112x630.jpg"},
  {name: "London", image_url: "https://www.askideas.com/media/41/Big-Ben-At-Sunset-London.jpg"},
  {name: "Gibraltar", image_url: "http://www.gibraltarbackgammon.com/images/slides/slide1.jpg"}
  ]


10.times do
  city_name = Faker::Address.city
  city = City.create({
    name: city_name,
    image_url: Faker::Avatar.image(city_name.to_s).to_s
    })
  user = User.create({
    city_id: city.id,
    email: Faker::Internet.email,
    password: "123456",
    image_url: Faker::Avatar.image("person").to_s
    })
    5.times do
      Post.create({
        user_id: user.id,
        city_id: city.id,
        name: Faker::Hacker.noun,
        content: Faker::Hipster.sentence(100)
        })
    end

end

users = [
  {city_id: 22, email: Faker::Internet.email, password: "123456", image_url: Faker::Avatar.image},
  {city_id: 23, email: Faker::Internet.email, password: "123456", image_url: Faker::Avatar.image},
  {city_id: 24, email: Faker::Internet.email, password: "123456", image_url: Faker::Avatar.image}
  ]

posts = [
  {user_id: 7, city_id: 22, name: Faker::Hipster.sentence, content: Faker::Hipster.sentence(50)},
  {user_id: 8, city_id: 23, name: Faker::Beer.name, content: Faker::Hipster.sentence(50)},
  {user_id: 7, city_id: 24, name: Faker::Beer.name, content: Faker::Hipster.sentence(50)}
  ]

City.create(cities)
User.create(users)
Post.create(posts)

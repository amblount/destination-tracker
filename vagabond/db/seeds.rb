City.delete_all
User.delete_all
Post.delete_all


cities = [
  {name: "San Francisco", image_url: "https://cdn.getyourguide.com/niwziy2l9cvz/1XBkFZIKqYw0248uGCuaWG/cc3d1c8fec71b6706ac961b449d2d823/san-francisco-san-francisco-bay-1112x630.jpg"},
  {name: "London", image_url: "https://www.askideas.com/media/41/Big-Ben-At-Sunset-London.jpg"},
  {name: "Gibraltar", image_url: "http://www.gibraltarbackgammon.com/images/slides/slide1.jpg"}
  ]

users = [
  {city_id: 1, email: Faker::Internet.email, password: "123456", image_url: Faker::Avatar.image},
  {city_id: 3, email: Faker::Internet.email, password: "123456", image_url: Faker::Avatar.image},
  {city_id: 2, email: Faker::Internet.email, password: "123456", image_url: Faker::Avatar.image}
  ]

posts = [
  {user_id: 1, city_id: 1, name: Faker::Hipster.sentence, content: Faker::Hipster.sentences(4)},
  {user_id: 2, city_id: 2, name: Faker::Beer.name, content: Faker::Hipster.sentences(4)},
  {user_id: 1, city_id: 3, name: Faker::Beer.name, content: Faker::Hipster.sentences(4)}
]

City.create(cities)
User.create(users)
Post.create(posts)

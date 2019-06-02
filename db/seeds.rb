# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Photo.destroy_all
Album.destroy_all
nature = Album.create(name: 'Nature', album_cover: "https://images.pexels.com/photos/247478/pexels-photo-247478.jpeg?cs=srgb&dl=clouds-cloudy-conifers-247478.jpg&fm=jpg", description: 'Beautiful landscapes to warm the soul');
roadtrip = Album.create(name: 'Road Trip', album_cover: 'https://media.cntraveler.com/photos/5727640996cb06c13a979153/master/pass/GettyImages-161842456.jpg', description: 'Amazing journey across colorado');


Photo.create(name: "Beauty", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Shaqi_jrvej.jpg/1200px-Shaqi_jrvej.jpg", album_id: 1)
Photo.create(name: "First Day", image_url: "https://thesophisticatedlife.com/wp-content/uploads/2016/05/road-trip-tips.jpg", album_id: 2)

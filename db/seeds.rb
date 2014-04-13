# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(name: "Words", slug: "words")
Category.create(name: "Pics", slug: "pics")
Category.create(name: "Vids", slug: "vids")

Post.create(title: "Blackjack game", post_url: "http://blackjack-6369.herokuapp.com/new_player", description: "A very simple blackjack game to check out.", image: "http://upload.wikimedia.org/wikipedia/commons/4/4b/Blackjack_board.JPG", category_id: "1")
Post.create(title: "Diving weiner dog", post_url: "http://www.digitalcameraworld.com/2013/04/07/photo-anatomy-how-one-of-the-webs-most-viral-images-was-made/", description: "A crazy dachshund dives into a pool to get a ball", image: "http://media.digitalcameraworld.com/files/2013/04/Famous_photographers_DCM132.shoot_anatomy.rhoda_water_rgb.jpg", category_id: "2")
Post.create(title: "I like turtles", post_url: "https://www.youtube.com/watch?v=CMNry4PE93Y", description: "Forget about the zombies. There's something much more interesting.", image: "http://art.ngfiles.com/images/183/jayraffo_i-like-turtles.jpg", category_id: "3")

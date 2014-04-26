Fabricator(:post) do
  title { Faker::Lorem.words(2).to_s }
  post_url = "http://www.google.com"
  description { Faker::Lorem.paragraph(2).to_s }
  image = "http://art.ngfiles.com/images/183/jayraffo_i-like-turtles.jpg"
end
c1= City.create(name: Faker::Address.city, state: Faker::Address.state)
c2= City.create(name: Faker::Address.city, state: Faker::Address.state)
c3= City.create(name: Faker::Address.city, state: Faker::Address.state)
c4= City.create(name: Faker::Address.city, state: Faker::Address.state)
c5= City.create(name: Faker::Address.city, state: Faker::Address.state)

r1 = Restaurant.create(name: Faker::Company.name, city: c1)
r2= Restaurant.create(name: Faker::Company.name, city: c2)
r3= Restaurant.create(name: Faker::Company.name, city: c3)
r4= Restaurant.create(name: Faker::Company.name, city: c4)
r5= Restaurant.create(name: Faker::Company.name, city: c5)

review1 = Review.create(restaurant: r1, rating: rand(1..5), content: Faker::Lorem.paragraph)
review2 = Review.create(restaurant: r2, rating: rand(1..5), content: Faker::Lorem.paragraph)
review3 = Review.create(restaurant: r3, rating: rand(1..5), content: Faker::Lorem.paragraph)
review4 = Review.create(restaurant: r4, rating: rand(1..5), content: Faker::Lorem.paragraph)
review5 = Review.create(restaurant: r5, rating: rand(1..5), content: Faker::Lorem.paragraph)




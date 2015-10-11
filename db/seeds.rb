5.times {
  User.create!(email: Faker::Internet.email,
               password: "12345678",
               password_confirmation: "12345678")
}

7.times {
  user_id = rand(1..User.count)
  Product.create!(title: Faker::Commerce.product_name,
                  price: rand * 100,
                  user_id: user_id)
}
User.create!(name:  "Genesis",
             email: "genesis@gmail.com",
             password:              "foobar",
             password_confirmation: "foobar")

20.times do |n|
  name  = Faker::Name.name
  email = "genesis-#{n+1}@gmail.com"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end


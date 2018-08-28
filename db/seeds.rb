require 'faker'

3.times do |n|
  email = "test-#{n}@example.com"
  password = "simplepass"
  User.create({ email: email,
                 password: password
               })
end

20.times do |n|
  manufacturer = Faker::Vehicle.make
  model = Faker::Vehicle.model(manufacturer)
  Car.create({
      brand: manufacturer,
      model: model,
      user: User.first
             })
end
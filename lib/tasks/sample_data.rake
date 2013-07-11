namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Example User",
                 email: "example@railstutorial.org",
                 city: "Chicago",
                 phone: 123456,
                 password: "foobar",
                 password_confirmation: "foobar")
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      city = "Chicago"
      phone = 123456
      password  = "password"
      User.create!(name: name,
                   email: email,
                   city: city,
                   phone: phone,
                   password: password,
                   password_confirmation: password)
    end
  end
end
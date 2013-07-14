namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
   make_users
    make_tasks
    make_relationships
  end
end

begin
def make_users
  admin = User.create!(name:     "Example User",
                       email:    "admin@railstutorial.org",
                       city: "Chicago",
                       phone: 123456,
                       password: "foobar",
                       password_confirmation: "foobar")
  admin.toggle!(:admin)
  99.times do |n|
    name  = Faker::Name.name
    email = "example-#{n+1}@railstutorial.org"
    password  = "password"
    city = "Chicago"
    phone = 123456
    User.create!(name:     name,
                 email:    email,
                 city: city,
                 phone: phone,
                 password: password,
                 password_confirmation: password)
  end
end
end

def make_tasks
  users = User.all(limit: 6)
  50.times do
    task = Faker::Lorem.sentence(5)
    users.each { |user| user.tasks.create!(task: task,
                                           assigned_user_id: 1, 
                                           complete_by: '1-Jan-2013', 
                                           is_complete: false,) }
  end
end

def make_relationships
end
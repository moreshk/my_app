FactoryGirl.define do
  factory :user do
    name     "Michael Hartl"
    email    "michael@example.com"
    city	 "Chicago"
    phone	 123456
    password "foobar"
    password_confirmation "foobar"
  end
end
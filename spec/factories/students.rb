# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  sequence :email do |n|
    "test#{n}@test.com"
  end

  factory :student do
    full_name "Test McTester"
    email
    age      34
    favorite_ice_cream_flavor 'Phish Food'
    password '12345678'
    password_confirmation '12345678'
    confirmed_at Time.now
  end

  factory :renee_student, parent: :student do
    full_name "Renee"
    bio "Hi I'm Renee"
  end

  # factory :user, class: Student do

  # end

end

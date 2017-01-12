FactoryGirl.define do |user|
  sequence :email do |n|
    "test_user_#{n}@example.com"
  end

  factory :user do
    name "Test User"
    email
    password "password123"
    password_confirmation "password123"
  end
end
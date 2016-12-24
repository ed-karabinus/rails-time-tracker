FactoryGirl.define do
  factory :user do
    name "Test User"
    email "test_user@example.com"
  end
end

FactoryGirl.modify do
  factory :user do
    after(:build) { |u| 
      u.password = "password123" 
      u.password_confirmation = "password123"
    }
  end
end
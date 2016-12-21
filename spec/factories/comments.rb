FactoryGirl.define do
  factory :comment do
    session
    user
    content "Test Content"
  end
end
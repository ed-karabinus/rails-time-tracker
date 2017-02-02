FactoryGirl.define do
  factory :comment do
    timeblock
    user
    content "Test Content"
  end
end
FactoryGirl.define do
  factory :session do
    project
    user
    description "Test session description."
  end
end
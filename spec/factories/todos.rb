FactoryGirl.define do
  factory :todo do
    title {Faker::Zelda.location}
    created_by {Faker::Number.number(10)}
  end
end

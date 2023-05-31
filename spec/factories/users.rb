FactoryBot.define do
  factory :user do
    name { Faker::Name.name}
    age { 1 }
    email { Faker::Internet.email}
  end
end

FactoryBot.define do
  factory :patient do
    first_name { Faker::Name.first_name }
    middle_name { Faker::Name.middle_name }
    last_name { Faker::Name.last_name }
    gender { 0 }
    dob { Faker::Date.birthday(18, 65) }
    mr { Faker::Number.number(5) }
  end
end
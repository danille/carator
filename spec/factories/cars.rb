FactoryBot.define do
  factory :car do
    user { nil }
    manufacturer { "MyString" }
    model { "MyString" }
    production_year { "2018-08-15" }
  end
end

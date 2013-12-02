# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :unit do
    number "1/2"
    rent 500.50
    property
  end
end

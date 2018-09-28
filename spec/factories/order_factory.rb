FactoryBot.define do
  factory :order do
    product
    user
    total { 10.0 }
  end
end

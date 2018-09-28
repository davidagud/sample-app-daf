FactoryBot.define do

  factory :comment do
    user
    body { "This is test text" }
    rating { 1 }
    product
  end

end

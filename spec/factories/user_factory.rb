FactoryBot.define do
  sequence(:email) { |n| "user#{n}@example.com"}
  sequence(:password) { |n| "testtest#{n}"}

  factory :user do
    email
    password
    first_name { "Primero" }
    last_name { "Apellido" }
    admin { false }
  end
  factory :admin, class: User do
    email
    password
    first_name { "Joe" }
    last_name { "Admin"}
    admin { true }
  end
end

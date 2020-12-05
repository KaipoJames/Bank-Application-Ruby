FactoryBot.define do
    factory :user do |f|
        f.sequence(:first_name) { |n| "Test #{n}" }
        f.sequence(:last_name) { |n| "User #{n}" }
        f.sequence(:email) { |n| "test#{n}@example.com" }
        f.sequence(:username) { |n| "testuser #{n}" }
        f.password { "password" }
        f.password_confirmation { |d| d.password }
    end
end
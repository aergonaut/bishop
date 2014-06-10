require 'securerandom'

FactoryGirl.define do
  factory :user do
    provider "foo"
    uid { SecureRandom.uuid }
    sequence(:login) { |x| "user#{x}" }
    sequence(:email) { |x| "user#{x}@example.com" }
  end
  
  factory :job do
    command "deploy"
    association :created_by, factory: :user
  end
end

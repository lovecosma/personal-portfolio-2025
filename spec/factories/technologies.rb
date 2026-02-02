FactoryBot.define do
  factory :technology do
    sequence(:name) { |n| "Technology #{n}" }
    association :tech_type
    rank { 1 }
  end
end

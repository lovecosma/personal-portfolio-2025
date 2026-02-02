FactoryBot.define do
  factory :tech_type do
    sequence(:name) { |n| "Tech Type #{n}" }
    icon_filename { "backend.svg" }
    rank { 1 }
  end
end

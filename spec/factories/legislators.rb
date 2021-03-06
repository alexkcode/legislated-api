FactoryBot.define do
  factory :legislator do
    os_id { "ILB0000#{Faker::Number.unique.number(6)}" }
    active { Faker::Boolean.boolean }
    first_name { Faker::Name.first_name }
    middle_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    suffixes { Faker::Name.suffix }
    party { %w[democrat republican independent].sample }
    chamber { %w[upper lower].sample }
    district { '9' }
    website_url { Faker::Internet.url }
    email { Faker::Internet.email }
    twitter { "@#{Faker::Twitter.screen_name }" }
  end
end

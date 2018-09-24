FactoryBot.define do
  factory :committee do
    ilga_id { Faker::Number.unique.number(5) }
    os_id { Faker::Code.asin }
    name { Faker::Company.industry }

    factory :open_states_committee do
      transient do
        ilga_id nil
        parent_id nil
      end

      initialize_with do
        OpenStates::ParseCommittee::Committee.new(
          os_id,
          nil,
          name,
          nil,
          nil
        )
      end
    end

    factory :fetched_ilga_committee do
      transient do
        chamber nil
      end

      initialize_with do
        Ilga::ParseHearing::Committee.new(
          ilga_id,
          name
        )
      end
    end
  end
end


FactoryGirl.define do
  factory :team, :class => Refinery::Teams::Team do
    sequence(:title) { |n| "refinery#{n}" }
  end
end


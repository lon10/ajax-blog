FactoryGirl.define do
  factory :article do
    title 'new title'
    category 'new category'
    author 'Ban'

    trait :named do
      sequence(:title) { |n| "title-#{n}" }
      sequence(:category) { |n| "category-#{n}" }
      sequence(:author) { |n| "author-#{n}" }
    end
  end
end

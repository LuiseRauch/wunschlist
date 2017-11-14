include RandomData

FactoryGirl.define do
  factory :wish do
    title RandomData.random_sentence
    body RandomData.random_paragraph
    url RandomData.random_url
    rating RandomData.random_rating
  end
end

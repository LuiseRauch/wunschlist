include RandomData

FactoryGirl.define do
  factory :wishlist do
    name RandomData.random_sentence
    description RandomData.random_paragraph
    public true
  end
end

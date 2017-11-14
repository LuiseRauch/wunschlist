require 'random_data'

# Create Wishlists
15.times do
  Wishlist.create!(
    name:         RandomData.random_sentence,
    description:  RandomData.random_paragraph
  )
end
wishlists = Wishlist.all

# Create Wishes
50.times do
  Wish.create!(
    wishlist: wishlists.sample,
    title:    RandomData.random_sentence,
    body:     RandomData.random_paragraph,
    url:      RandomData.random_url,
    rating:   RandomData.random_rating
  )
end

puts "Seed finished"
puts "#{Wishlist.count} wishlists created"
puts "#{Wish.count} wishes created"

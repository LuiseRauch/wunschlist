require 'rails_helper'

RSpec.describe Wish, type: :model do
  let(:wishlist) { create(:wishlist)}
  let(:wish) { create(:wish, wishlist: wishlist) }

  it { is_expected.to belong_to(:wishlist) }

  describe "attributes" do
    it "has title, body, url and rating attributes" do
      expect(wish).to have_attributes(title: wish.title, body: wish.body, url: wish.url, rating: wish.rating)
    end
  end
end

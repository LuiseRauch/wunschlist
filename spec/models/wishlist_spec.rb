require 'rails_helper'

RSpec.describe Wishlist, type: :model do
  let(:wishlist) { create(:wishlist) }

  it { is_expected.to have_many(:wishes) }

  describe "attributes" do
    it "has name, description, and public attributes" do
      expect(wishlist).to have_attributes(name: wishlist.name, description: wishlist.description, public: true)
    end

    it "is public by default" do
      expect(wishlist.public).to be(true)
    end
  end


end

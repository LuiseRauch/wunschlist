class AddWishlistToWishes < ActiveRecord::Migration[5.1]
  def change
    add_column :wishes, :wishlist_id, :integer
    add_index :wishes, :wishlist_id
  end
end

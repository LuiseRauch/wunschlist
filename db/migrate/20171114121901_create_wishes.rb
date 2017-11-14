class CreateWishes < ActiveRecord::Migration[5.1]
  def change
    create_table :wishes do |t|
      t.string :title
      t.text :body
      t.string :url
      t.integer :rating

      t.timestamps
    end
  end
end

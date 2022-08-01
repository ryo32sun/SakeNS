class CreateShopPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :shop_posts do |t|
      t.integer :shop_id, null: false
      t.integer :sake_post_id, null: false
      t.float :rate, null: false

      t.timestamps
    end
  end
end

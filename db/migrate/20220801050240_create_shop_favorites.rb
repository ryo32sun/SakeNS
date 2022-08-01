class CreateShopFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :shop_favorites do |t|
      t.integer :shop_id, null: false
      t.integer :customer_id, null: false

      t.timestamps
    end
  end
end

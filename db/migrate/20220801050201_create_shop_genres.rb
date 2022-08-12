class CreateShopGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :shop_genres do |t|
      t.string :genre, null: false

      t.timestamps
    end
  end
end

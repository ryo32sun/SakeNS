class CreateShops < ActiveRecord::Migration[6.1]
  def change
    create_table :shops do |t|
      t.integer :shop_genre_id, null: false
      t.string :name, null: false
      t.integer :prefectures, null: false
      t.string :address
      t.text :remark

      t.timestamps
    end
    add_index :shops, [:name], unique: true
  end
end

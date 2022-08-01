class CreateSakePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :sake_posts do |t|
      t.integer :sake_id, null: false
      t.integer :customer_id, null: false
      t.string :feature
      t.text :impression, null: false
      t.float :rate, null: false

      t.timestamps
    end
  end
end

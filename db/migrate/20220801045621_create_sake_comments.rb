class CreateSakeComments < ActiveRecord::Migration[6.1]
  def change
    create_table :sake_comments do |t|
      t.integer :sake_post_id, null: false
      t.integer :customer_id, null: false
      t.string :comment, null: false

      t.timestamps
    end
  end
end

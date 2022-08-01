class CreateSakes < ActiveRecord::Migration[6.1]
  def change
    create_table :sakes do |t|
      t.integer :sake_genre_id, null: false
      t.string :name, null: false
      t.integer :prefectures, null: false

      t.timestamps
    end
  end
end

class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :name, null: false
      t.string :type, null: false
      t.integer :genre_id, null: false
      t.text :info
      t.integer :views, default: 0

      t.timestamps
    end

    add_index :videos, :genre_id
  end
end

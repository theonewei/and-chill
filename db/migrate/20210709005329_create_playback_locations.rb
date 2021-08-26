class CreatePlaybackLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :playback_locations do |t|
      t.integer :profile_id, null: false
      t.integer :video_id, null: false
      t.integer :current_location, default: 0

      t.timestamps
    end

    add_index :playback_locations, :profile_id
    add_index :playback_locations, :video_id
  end
end

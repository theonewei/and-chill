class AddActivetoProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :active, :boolean, default: false
  end
end

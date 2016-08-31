class AddImageToSongs < ActiveRecord::Migration[5.0]
  def change
    add_column :songs, :image, :string
  end
end

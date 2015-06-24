class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :album_name
      t.string :image_url

      t.timestamps null: false
    end
  end
end

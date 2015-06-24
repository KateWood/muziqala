class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :display_nameuser_uri
      t.string :token
      t.string :refresh_token
      t.string :image_url
      t.string :spotify_id

      t.timestamps null: false
    end
  end
end

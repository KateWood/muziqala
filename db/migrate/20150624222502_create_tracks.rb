class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :track_name
      t.string :track_uri
      t.string :artist_name
      t.references :album, index: true, foreign_key: true
      t.integer :duraction_ms

      t.timestamps null: false
    end
  end
end

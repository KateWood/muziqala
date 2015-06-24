class CreatePlaylisttracks < ActiveRecord::Migration
  def change
    create_table :playlisttracks do |t|
      t.references :playlist, index: true, foreign_key: true
      t.references :track, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

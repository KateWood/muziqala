class RemoveColumnsFromTracks < ActiveRecord::Migration
  def change
    remove_column :tracks, :track_name, :string
    remove_column :tracks, :artist_name, :string
    remove_column :tracks, :album_id, :integer
    remove_column :tracks, :duraction_ms, :integer
  end
end

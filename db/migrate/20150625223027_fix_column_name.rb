class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :tracks, :track_uri, :spotify_id
  end
end

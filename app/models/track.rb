class Track < ActiveRecord::Base
  belongs_to :album
  has_many :playlisttracks
  has_many :playlists, through: :playlisttracks

  def track_info
  	RSpotify::Track.find(:spotify_id)
  end
end

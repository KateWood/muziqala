class Track < ActiveRecord::Base
  belongs_to :album
  has_many :playlisttracks
  has_many :playlists, through: :playlisttracks
end

class User < ActiveRecord::Base
	has_many :playlistusers
	has_many :playlists, through: :playlistusers
end

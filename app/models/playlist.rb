class Playlist < ActiveRecord::Base
	has_many :playlistusers
	has_many :users, through: :playlistusers
end

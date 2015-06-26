class Playlist < ActiveRecord::Base
	has_many :playlistusers
	has_many :users, through: :playlistusers

  has_many :playlisttracks
  has_many :tracks, through: :playlisttacks

  validates :name, presence: true
end

class Playlistuser < ActiveRecord::Base
  belongs_to :playlist
  belongs_to :user
end

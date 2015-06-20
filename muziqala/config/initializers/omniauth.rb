require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
	provider :spotify, ENV["spotify_client_id"], ENV["spotify_secret"], scope: 'user-read-email playlist-modify-public user-library-read user-library-modify'
end

Rails.application.config.middleware.use OmniAuth::Builder do
	provider :developer unless Rails.env.production?
	provider :facebook, ENV["facebook_client_id"], ENV["facebook_secret"]
end
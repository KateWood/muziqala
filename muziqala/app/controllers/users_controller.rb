class UsersController < ApplicationController
	# Sets user for show, edit, update, and destroy using user_params
	before_action :set_user, only: [:show, :edit, :update, :destroy]
	
	# Shows all users
	def index
		@users = User.all
	end

	# Sets user on sign up page
	def new
		@user = User.new
	end

	# Creates a user upon sign up
	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to users_path
		else
			render :new
		end
	end

	def spotify
		spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
		# Now you can access user's private data, create playlists and much more

		# Access private data
		spotify_user.country #=> "US"
		spotify_user.email   #=> "example@email.com"

		# Create playlist in user's Spotify account
		playlist = spotify_user.create_playlist!('my-awesome-playlist')

		# Add tracks to a playlist in user's Spotify account
		tracks = RSpotify::Track.search('Know')
		playlist.add_tracks!(tracks)
		playlist.tracks.first.name #=> "Somebody That I Used To Know"

		# Access and modify user's music library
		spotify_user.save_tracks!(tracks)
		spotify_user.saved_tracks.size #=> 20
		spotify_user.remove_tracks!(tracks)

		# Use Spotify Follow features
		spotify_user.follow(playlist)
		spotify_user.follows?(artists)
		spotify_user.unfollow(users)

		# Check doc for more
	end

private
	# Defines user params for use in controller actions
	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
	end
end

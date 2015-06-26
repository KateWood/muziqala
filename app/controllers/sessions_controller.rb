class SessionsController < ApplicationController

	# Defines user for show page
	def show
		redirect_to root_path unless session['auth']
		@auth = session['auth']
	end

	# Creates a session for a user logged in via Facebook
	def create_auth
		@auth = request.env['omniauth.auth']
		session['auth'] = @auth
		if User.where(:spotify_id => @auth["info"]["id"]).first
			redirect_to sessions_show_path
		else
			@user = User.create(
				:display_name => @auth["info"]["display_name"],
				:token => @auth["credentials"]["token"],
				:refresh_token => @auth["credentials"]["refresh_token"],
				:image_url => @auth["info"]["images"][0]["url"],
				:spotify_id => @auth["info"]["id"],
				:user_uri => @auth["info"]["uri"]
				)
			redirect_to sessions_show_path
		end
	end

	# Ends auth session at logout
	def destroy_auth
		session['auth'] = nil
		redirect_to root_path
	end

end

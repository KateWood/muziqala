class SessionsController < ApplicationController
	# Login for a new session
	def new
	end

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

	# Creates a session for a user logged in manually (bcrypt)
	def create
		user = User.where(email: params[:login][:email]).first
		if user && user.authenticate(params[:login][:password])
			session[:user_id] = user.id.to_s
			redirect_to users_path
		else
			render :new
		end
	end

	# Ends auth session at logout
	def destroy_auth
		session['auth'] = nil
		redirect_to root_path
	end

	# Ends user session at logout
	def destroy
		session.delete(:user_id)
		redirect_to login_path
	end
end

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
		redirect_to sessions_show_path
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
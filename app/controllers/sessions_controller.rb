class SessionsController < ApplicationController

	def create
		if user = User.authenticate(params[:email], params[:password])
			session[:user_id] = user.id
			logger.info"\n\n[INFO] ------------------------------------------------------"		
			logger.info"[INFO] User logged:  #{user.id} #{user.name} #{user.surname} #{user.email}"
			logger.info"[INFO] ------------------------------------------------------\n\n"
			redirect_to root_path, :notice => t(:welcome) + " " + user.imperative_name + "!"
		else
			flash.now[:alert] = t(:invalid_login_password_combination)
			render :action => 'new'
		end
	end
	
	def destroy
		reset_session
		redirect_to login_path, :notice => t(:logged_out)
	end
	
end

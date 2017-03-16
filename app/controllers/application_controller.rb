class ApplicationController < ActionController::Base
  include ApplicationHelper
  protect_from_forgery
  
#  before_filter :authenticate
  	
  protected
	helper_method :current_user
	helper_method :logged_in?
	helper_method :admin?
  helper_method :cu 
	helper_method :e
	helper_method :i
	helper_method :d
	

	# Returns the currently logged in user or nil if there isn't one
	def current_user
		return unless session[:user_id]
		@current_user ||= User.find_by_id(session[:user_id])
	end

  def cu #current user
	  return unless session[:user_id]
		@cu ||= User.find_by_id(session[:user_id])
	end
	
	# Predicate method to test for a logged in user
	def logged_in?
		current_user.is_a? User
	end

	def admin?
	  if logged_in?
			return current_user.admin?
		else
			return false
		end
	end
	
	def manager?
    if logged_in?
      return current_user.manager
    else
      return false
    end
  end
	
	# Filter method to enforce a login requirement
	# Apply as a before_filter on any controller you want to protect
	def authenticate
		logged_in? ? true : redirect_to_root
	end

	def authenticate_admin
		admin? ? true : access_denied
	end

	def access_denied
		render '/access_denied'
	end

	def redirect_to_root
		redirect_to login_path, :notice => t(:please_log_in_to_continue) and return false
	end

end

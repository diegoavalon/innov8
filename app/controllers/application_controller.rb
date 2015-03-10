class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_devise_permitted_parameters, if: :devise_controller?

 private
 	def after_sign_out_path_for(resource_or_scope)
 	    login_path
	end

	def configure_devise_permitted_parameters
	    registration_params = [:fname, :lname, :email, :password, :password_confirmation, :admin, :apparel, :footwear, :gloves]

	    if params[:action] == 'update'
	      devise_parameter_sanitizer.for(:account_update) { 
	        |u| u.permit(registration_params << :current_password)
	      }
	    elsif params[:action] == 'create'
	      devise_parameter_sanitizer.for(:sign_up) { 
	        |u| u.permit(registration_params) 
	      }
	    end
	  end

end

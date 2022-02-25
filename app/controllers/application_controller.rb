class ApplicationController < ActionController::Base
	before_action :authenticate_user!
	
	before_action :configure_permitted_parameters, if: :devise_controller?
	
	protected
	
	def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :sex, :user_name, :phone_number, :address, :children_or_not, :age, :skin_type, :worries_about_skin, :point])
		
      devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :sex, :user_name, :phone_number, :address, :children_or_not, :age, :skin_type, :worries_about_skin, :point])
	end
end

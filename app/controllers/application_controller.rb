class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :overload_devise_parameters, if: :devise_controller?

  def overload_devise_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:fname, :lname, :address, :email, :password, :password_confirmation, :avatar, :avatar_cache) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:fname, :lname, :address, :email, :password, :password_confirmation, :current_password, :avatar, :avatar_cache, :remove_avatar) }
  end

  rescue_from CanCan::AccessDenied do |exception|
   redirect_to root_url, :alert => exception.message
 end

end

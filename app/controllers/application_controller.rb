class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :overload_devise_parameters, if: :devise_controller?

  def overload_devise_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:fname, :lname, :address, :email, :password, :password_confirmation) }
  end
end

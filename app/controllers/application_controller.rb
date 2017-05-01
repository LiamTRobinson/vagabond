class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :profile_picture_url, :user_name, :is_admin?])
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :current_password, :profile_picture_url, :user_name, :is_admin?])
  end

end

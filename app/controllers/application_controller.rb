class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected 

  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password, :remember_me])#if u registrated u must write these params
  	devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password, :remember_me])#if u sign in to ur account u must write these params
  	devise_parameter_sanitizer.permit(:account_update, keys: [:username, :email, :password, :remember_me, :Avatar])
  end
  def after_sign_in_path_for(resource)
  posts_path
end
end

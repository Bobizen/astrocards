class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:birthdate, :privacy_statement, :nickname, :avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: [:birthdate, :nickname, :avatar, :password])
  end
end

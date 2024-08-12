class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :configure_permitted_parameters_sign_in, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

  def configure_permitted_parameters_sign_in
  devise_parameter_sanitizer.permit(:sign_in, keys: [:username])
  end
end

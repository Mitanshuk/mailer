class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_type])
  end

  def after_sign_in_path_for(resource)
    if resource.is_a?(User)
      if resource.tutor?
        courses_path
      elsif resource.student?
        root_path
      end
    else
      root_path
    end
  end
end

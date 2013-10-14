class ApplicationController < ActionController::Base
  before_filter :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  def after_sign_in_path_for(resource)
    @role = current_user.role
    if @role == 'professional'
      welcome_professional_path
    elsif @role == 'admin'
      welcome_admin_path
    end
  end



  protect_from_forgery with: :exception

  protected
  
 def configure_permitted_parameters
  devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:role, :email, :password ) }
   
   devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password, :remember_me) }

 end


end

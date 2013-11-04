class ApplicationController < ActionController::Base
  before_action :authenticate_admin!
  before_action :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  def after_sign_in_path_for(resource)
    @role = current_user.role
    if @role == 'professional'
      welcome_professional_path
    elsif @role == 'admin'
      welcome_admin_path
    elsif @role == 'student'
      root_path
    elsif @role == 'college-student'
      welcome_college_student_path
    end
  end

  



  protect_from_forgery with: :exception

  protected
  
 def configure_permitted_parameters
   devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:role, :email, :password ) }  
   devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password, :remember_me) }
 end

 def authenticate_admin!
   unless user_signed_in? and current_user.role == 'admin'
     redirect_to root_path
   end
 end
end

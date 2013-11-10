class WelcomeController < ApplicationController
  before_action :authenticate_admin!, only: [:admin]
  
  def admin
    @mous = Mou.all
    @student_interests = StudentInterest.all 
  end

  def professional
    
  end

  def student
  end

  def college_student
  end

end

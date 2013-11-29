class StaticPagesController < ApplicationController
  skip_before_action :authenticate_admin!

  def home
    
  end
  
  def about
    @pagename = "about"
  end
  
  def sponsors
    @pagename = "sponsors"
  end

  def students
    @pagename = "students"
  end

  def professionals
    @pagename = "professionals"
  end

  def administrators
    @pagename = "administrators"
  end

  def businesses
    @pagename = "businesses"
  end

  def schools
    @pagename = "schools"
  end

end

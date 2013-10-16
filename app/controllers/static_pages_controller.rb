class StaticPagesController < ApplicationController
  def home
    
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

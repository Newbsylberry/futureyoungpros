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

  def testimonials
    @pagename = "testimonials"
  end

  def facebook_post
    @pagename = "facebook"
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
    @job_sites = Business.where(job_site: true )
  end

  def schools
    @pagename = "schools"
    @schools = School.all
  end

end

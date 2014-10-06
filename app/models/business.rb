class Business < ActiveRecord::Base
  has_many :mous
  has_many :job_site_applications
  has_many :school_businesses
  has_many :schools, through: :school_businesses
  mount_uploader :picture, PictureUploader

end

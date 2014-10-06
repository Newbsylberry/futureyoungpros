class School < ActiveRecord::Base
  has_many :job_site_applications
  has_many :school_businesses
  has_many :businesses, through: :school_businesses

  mount_uploader :picture, PictureUploader
end

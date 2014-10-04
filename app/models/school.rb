class School < ActiveRecord::Base
  has_many :job_site_applications
  mount_uploader :picture, PictureUploader
end

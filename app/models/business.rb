class Business < ActiveRecord::Base
  has_many :mous
  has_many :job_site_applications
end

class SchoolClass < ActiveRecord::Base
  belongs_to :school
  belongs_to :business
  has_many :job_site_applications
end

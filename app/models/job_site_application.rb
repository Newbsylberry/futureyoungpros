class JobSiteApplication < ActiveRecord::Base
  belongs_to :business
  belongs_to :school
end

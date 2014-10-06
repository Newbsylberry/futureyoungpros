class SchoolBusiness < ActiveRecord::Base
  belongs_to :school
  belongs_to :business

  validate :school_id, presence: true
  validate :business_id, presence: true
end

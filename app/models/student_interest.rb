class StudentInterest < ActiveRecord::Base
  belongs_to :category
  belongs_to :school
end

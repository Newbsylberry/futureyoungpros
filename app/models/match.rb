class Match < ActiveRecord::Base
  belongs_to :user
  belongs_to :mou
  belongs_to :student_interest
end

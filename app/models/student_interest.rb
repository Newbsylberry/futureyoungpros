class StudentInterest < ActiveRecord::Base
  belongs_to :category
  belongs_to :school
  has_many :matches, dependent: :destroy
end

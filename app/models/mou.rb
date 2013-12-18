class Mou < ActiveRecord::Base
  belongs_to :category
  belongs_to :business
  has_many :matches, dependent: :destroy

end

class Category < ActiveRecord::Base
  has_many :mous
  has_many :subcategories, :dependent => :destroy
  

end

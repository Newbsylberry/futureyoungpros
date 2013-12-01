class User < ActiveRecord::Base
  has_many :matches

  easy_roles :roles_mask, method: :bitmask
  

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 

  

end

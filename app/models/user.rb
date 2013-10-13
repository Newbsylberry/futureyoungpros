class User < ActiveRecord::Base
  ROLES = %w[admin professional student]
 
  has_many :mous
  
  

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 

end

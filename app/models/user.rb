class User < ActiveRecord::Base
  devise :database_authenticatable,
         :recoverable, 
         :rememberable, 
         :trackable, 
         :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, 
                  :password, 
                  :password_confirmation, 
                  :remember_me
  
  has_many :roles
  def role_symbols
    (roles || []).map {|r| r.title.to_sym}
  end
end

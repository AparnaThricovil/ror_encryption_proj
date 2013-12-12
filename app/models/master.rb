class Master < ActiveRecord::Base
  has_secure_password
  #attr_accessible :password,:password_confirmation
#has_secure_password validations: false # This is the key to the solution
#validates :password, presence: true, length: { minimum: 6 } #or whatever you want

end

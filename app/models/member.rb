class Member < ActiveRecord::Base
has_secure_password
attr_accessible :email, :password, :password_confirmation, :full_name, :city
validates_presence_of :email, :full_name, :city
validates_uniqueness_of :email 

end

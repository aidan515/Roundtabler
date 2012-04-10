class Member < ActiveRecord::Base
has_secure_password
attr_accessible :email, :password, :password_confirmation, :full_name, :city
validates_presence_of :email, :full_name, :city
validates_uniqueness_of :email 
before_create { generate_token(:auth_token) }

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while Member.exists?(column => self[column])
  end

end

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
  
  def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    save!
    MemberMailer.password_reset(self).deliver
  end

end

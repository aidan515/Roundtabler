class Member < ActiveRecord::Base
has_secure_password
has_one :profile, :dependent => :destroy
has_many :roundtables
attr_accessible :email, :password, :password_confirmation, :full_name, :city
validates_presence_of :full_name, :city
validates_uniqueness_of :email 
email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
validates_presence_of :email, :format => { :with => email_regex }
before_create { generate_token(:auth_token) }

  def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    save!
    MemberMailer.password_reset(self).deliver
  end
  
  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while Member.exists?(column => self[column])
  end
end

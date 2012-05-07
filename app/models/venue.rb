class Venue < ActiveRecord::Base
has_secure_password
has_many :roundtables
belongs_to :city
attr_accessible :name, :password, :password_confirmation, :r_type, :address_1, :address_2, :city_id, :post_code, :email, :phone_number, :venue_image 
validates_presence_of :name, :city_id, :address_1, :r_type, :phone_number
validates_uniqueness_of :email 
email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
validates_presence_of :email, :format => { :with => email_regex }

mount_uploader :venue_image, VenueImageUploader
end

def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while Venue.exists?(column => self[column])
end

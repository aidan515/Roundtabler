class Venue < ActiveRecord::Base
attr_accessible :name, :r_type, :address_1, :address_2, :city, :post_code, :email, :phone_number
validates_presence_of :name, :city, :address_1, :r_type, :phone_number
validates_uniqueness_of :email 
email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
validates_presence_of :email, :format => { :with => email_regex }
end

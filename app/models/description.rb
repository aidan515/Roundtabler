class Description < ActiveRecord::Base

attr_accessible :address_1, :address_2, :r_type, :post_code, :phone_number, :venue_image
validates_presence_of :address_1
#validates_presence_of :member_id
validates_presence_of :r_type
validates_presence_of :post_code
validates_presence_of :phone_number
validates_presence_of :venue_image
belongs_to :venue

mount_uploader :venue_image, VenueImageUploader
acts_as_gmappable

  def gmaps4rails_address
    address = "#{self.address_1}, #{self.address_2}, #{self.venue.city} #{self.post_code}"
  end

end
class Profile < ActiveRecord::Base
attr_accessible :description, :interest_1, :interest_2, :hobby_1, :hobby_2, :employer, :birthday, :member_id, :image
validates_presence_of :description, :length => { :maximum => 80 }
#validates_presence_of :member_id
validates_presence_of :interest_1
validates_presence_of :interest_2
validates_presence_of :hobby_1
validates_presence_of :hobby_2
validates_presence_of :birthday

belongs_to :user

mount_uploader :image, ImageUploader
end

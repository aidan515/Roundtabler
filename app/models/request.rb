class Request < ActiveRecord::Base
  belongs_to :roundtable
  belongs_to :member
  has_many :roundtables
  attr_accessible :confirm, :roundtable_id
  validates_presence_of :roundtable_id, :member_id 
end
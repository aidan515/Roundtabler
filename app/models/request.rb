class Request < ActiveRecord::Base
  belongs_to :roundtable
  belongs_to :user
  has_many :roundtables
  attr_accessible :confirm, :roundtable_id
  validates_presence_of :roundtable_id, :member_id 
  
  def send_seat_request
    MemberMailer.seat_request(self.member,self.roundtable.member).deliver
  end
end

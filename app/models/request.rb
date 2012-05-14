class Request < ActiveRecord::Base
  belongs_to :roundtable
  belongs_to :user
  has_many :roundtables
  attr_accessible :confirm, :roundtable_id
  validates_presence_of :roundtable_id, :user_id 
  
  def send_seat_request
    MemberMailer.seat_request(self.user,self.roundtable.user).deliver
  end
end

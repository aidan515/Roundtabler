class Roundtable < ActiveRecord::Base
attr_accessible :topic, :attendee_number, :kick_off, :dinner_on, :venue_id, :city_id, :summary
validates_presence_of :topic, :attendee_number, :kick_off, :dinner_on, :venue_id, :city_id, :summary
belongs_to :user
belongs_to :venue
has_many :requests
belongs_to :city
default_scope :order => 'roundtables.dinner_on ASC'
end

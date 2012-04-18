class Roundtable < ActiveRecord::Base
attr_accessible :topic, :attendee_number, :kick_off, :dinner_on, :venue_id
validates_presence_of :topic, :attendee_number, :kick_off, :dinner_on
belongs_to :member
belongs_to :venue
default_scope :order => 'roundtables.dinner_on ASC'
end
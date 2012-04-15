class Roundtable < ActiveRecord::Base
attr_accessible :topic, :attendee_number, :kick_off, :dinner_on
validates_presence_of :topic, :attendee_number, :kick_off, :dinner_on
belongs_to :member

end

class City < ActiveRecord::Base
has_many :venues
has_many :members
end

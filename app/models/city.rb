class City < ActiveRecord::Base
has_many :venues
has_many :members
has_many :roundtables
end

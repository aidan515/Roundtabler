class Venue < Member
has_one :description, :dependent => :destroy
has_many :roundtables
end


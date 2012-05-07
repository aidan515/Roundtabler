class User < Member
  has_one :profile, :dependent => :destroy
  has_many :roundtables
  has_many :requests
end
Factory.define :member do |f|
  f.sequence(:email) { |n| "foo#{n}@example.com"}
  f.password "secret"
  f.sequence(:full_name) { |s| "Foo#{s} Bar"}
  f.city
  f.profile { Factory.build(:profile) }
end

Factory.define :city do |f|
  f.name "London"
end

Factory.define :profile do |f|
  f.description "Fake person"
  f.interest_1 "Finance"
  f.interest_2 "Private equity"
  f.hobby_1 "Rugby"
  f.hobby_2 "Soccer"
  f.birthday {21.years.ago}
end

Factory.define :venue do |v|
  v.name "Nandos"
  v.r_type "Chicken"
  v.address_1 "Baker St"
  v.city
  v.email "nandos515@gmail.com"
  v.phone_number "00000000"
end

Factory.define :roundtable do |r|
  r.topic "Who's taking the horse to France"
  r.dinner_on {Date.today + 3}
  r.kick_off {2.hours.ago}
  r.attendee_number "4"
  r.venue
end

Factory.define :roundtable_with_member, :parent => :member do |roundtable|
  roundtable.after_build { |a| Factory(:roundtable, :member => a) }
end

Factory.define :request do |q|
end

Factory.define :request_with_member, :parent => :member do |request|
  request.after_build { |a| Factory(:request, :member => a)}
end

Factory.define :request_with_roundtable, :parent => :roundtable do |request|
  request.after_build { |a| Factory(:request, :roundtable => a)}
end
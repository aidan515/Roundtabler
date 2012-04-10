Factory.define :member do |f|
  f.sequence(:email) { |n| "foo#{n}@example.com"}
  f.password "secret"
  f.full_name "Foo Bar"
  f.city "Dublin"
end
FactoryGirl.define do
  factory :setting do |s|
    s.caption  "name"
    s.value    "value"
    s.web_type "input"
  end
end

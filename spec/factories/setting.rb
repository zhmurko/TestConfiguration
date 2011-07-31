FactoryGirl.define do
  factory :setting do |s|
    caption 
    s.value    "value"
    s.web_type "input"
    s.after_build { |s| s.save! }
  end
  sequence :caption do |n|
    "name#{n}"
  end
end

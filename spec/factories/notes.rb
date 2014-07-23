# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :note do
    project nil
    content "MyText"
    date "2014-01-26 19:14:39"
  end
end

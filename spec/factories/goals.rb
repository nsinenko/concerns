# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :goal do
    name "MyString"
    description "MyText"
    due "2014-08-15 16:22:53"
    project nil
    done false
  end
end

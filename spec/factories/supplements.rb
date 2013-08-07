# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :supplement do
    name "MyString"
    supplement_group_id ""
    description "MyText"
    dose "MyString"
  end
end

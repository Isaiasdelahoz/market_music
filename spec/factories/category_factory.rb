FactoryGirl.define do 
  factory :category do |advertisement|
    sequence(:name) { |n| "Category #{n}" }
  end 
end 
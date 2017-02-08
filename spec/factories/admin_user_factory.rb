FactoryGirl.define do 
  factory :admin_user do |admin_user|
    sequence(:email) { |n| "isaiasdelahoz#{n}@gmail.com"}
    password "123456"
    password_confirmation "123456"

  end 

end 
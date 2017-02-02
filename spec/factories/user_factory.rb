FactoryGirl.define do 
  factory :user do |user|
    first_name "nose" 
    last_name "tampocose"
    sequence(:email) {|n| "menos_#{n}@gmail.com"}
    password "123456"
    password_confirmation "123456"
  end 
end
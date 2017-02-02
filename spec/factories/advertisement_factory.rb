FactoryGirl.define do 
  factory :advertisement do |advertisement|
    name "nuevo"
    price "123456"
    phone "123456"
    description "nada"
    ubication "ninguna parte"
    avatar_file_name 'test.png'
    avatar_content_type 'image/png'
    avatar_file_size 1024 
    category
  end 
end 
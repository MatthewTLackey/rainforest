FactoryGirl.define  do 
  factory :product do
    name "MyString"
    description "MyText"
    price_in_cents 1
  end



  factory :user do
    email "123@123.com"
    password_digest "a_password"
    name "username"
  end


  factory :review do 
    comment "A comment"
    product_id 1
    user_id 1

  end

end
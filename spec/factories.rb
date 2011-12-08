FactoryGirl.define do
  factory :destination do 
    title 'The final destination X'
    description 'Ruby and sprout... alsjdfha skdfhjasdf .jahsdfl ahsdkf gasdlkfjhal sdfgk'
    user ''
  end 
  sequence :email do |n|
     example#{n}@hotmail.com
  end
  factory :review do 
    content 'The nice place/movie.'
  end
  factory :user do 
        email ''
        password ''
        password_confirmation ''
      end
end

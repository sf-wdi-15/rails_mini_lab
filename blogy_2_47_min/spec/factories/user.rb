FactoryGirl.define do
  factory :user do
    new_email = Faker::Internet.email
    pswrd = "BlahBlah"
    email new_email
    email_confirmation new_email
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    password pswrd
    password_confirmation pswrd
  end
end
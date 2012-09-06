FactoryGirl.define do
  factory :user do
    name "Ronald Lens"
    email "ronald@ronaldlens.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
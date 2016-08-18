FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end

  factory :user do
    email {generate :email}
    first_name "John"
    last_name "Doe"
    password "abcdefgh"
    password_confirmation "abcdefgh"
  end

  factory :admin_user, class: "AdminUser" do
    email {generate :email}
    first_name "Admin"
    last_name "User"
    password "abcdefgh"
    password_confirmation "abcdefgh"
  end
end

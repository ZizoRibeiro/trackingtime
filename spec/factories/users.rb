FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end

  factory :user do
    first_name "John"
    last_name "Doe"
    email {generate :email}
    password "abcdefgh"
    password_confirmation "abcdefgh"
  end

  factory :admin_user, class: "AdminUser" do
    first_name "Admin"
    last_name "User"
    email {generate :email}
    password "abcdefgh"
    password_confirmation "abcdefgh"
  end

  factory :non_authorized_user, class: "User" do
    first_name "Non"
    last_name "Authorized"
    email {generate :email}
    password "abcdefgh"
    password_confirmation "abcdefgh"
  end
end

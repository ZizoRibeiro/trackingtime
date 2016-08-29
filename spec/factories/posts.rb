FactoryGirl.define do
  factory :post do
    date Date.today
    rationale "Some Rationale"
    tracking_hours 3.5
    user
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    rationale "Some more content"
    tracking_hours 0.5
    user
  end

  # factory :third_from_other_user, class: "Post" do
  #   date Date.yesterday
  #   rationale "Some more content"
  #   non_authorized_user
  #   user
  # end
end

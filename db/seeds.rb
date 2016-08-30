@user = User.create(email: "john@example.com",
                    password: "abcabcabc",
                    password_confirmation: "abcabcabc",
                    first_name: "John",
                    last_name: "Doe"
                    phone: "6047251362")

puts "1 User Created"

AdminUser.create(email: "zizo@example.com",
                 password: "abcabcabc",
                 password_confirmation: "abcabcabc",
                 first_name: "zizo",
                 last_name: "Rib"
                 phone: "6047251362")

puts "1 User Created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, tracking_hours: 2.5)
end

puts "100 posts have been created"

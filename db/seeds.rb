@user = User.create(email: "john@example.com",
                    password: "abcabcabc",
                    password_confirmation: "abcabcabc",
                    first_name: "John",
                    last_name: "Doe",
                    phone: "7786539058")

puts "1 User Created"

AdminUser.create(email: "zizo@example.com",
                 password: "abcabcabc",
                 password_confirmation: "abcabcabc",
                 first_name: "zizo",
                 last_name: "Rib",
                 phone: "7786539058")

puts "1 Admin User Created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content Lorem ipsum dolor sit amet,
  consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
  Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
  Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  user_id: @user.id, tracking_hours: 2.5)
end

puts "100 posts have been created"

100.times do |audit_log|
  AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 audit logs have been created"

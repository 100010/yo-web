begin
  ActiveRecord::Base.transaction do
    5.times do |i|
      User.new(
        email: "test+#{ i + 1 }@test.com"
      ) do |user|
        user.password = '11111111'
        user.save!
      end
    end
  end
rescue => e
  puts e
end

module SmsTool
  def self.send_sms(number:, message:)
    puts "Sending SMS..."
    puts "#{number} to #{message}"
  end
end

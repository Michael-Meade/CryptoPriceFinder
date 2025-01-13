# frozen_string_literal: true

require 'CryptoPriceFinder'
require 'date'
task :cron do
  time = Time.new
  time_save = time.strftime("%m/%d/%Y\s%I:%M%p")
  stellar = CryptoPriceFinder.stellar(6018.9345579)
  File.open(File.join(__dir__, 'save_stellar2.txt'), 'a') { |file| file.write("#{time_save}\s#{stellar}\n") }
end

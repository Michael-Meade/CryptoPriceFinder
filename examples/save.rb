require 'CryptoPriceFinder'
require 'date'
time = Time.new
time_save = time.strftime("%m/%d/%Y\s%I:%M%p")
monero = CryptoPriceFinder::monero(6.1)
File.open("save.txt", 'a') { |file| file.write("#{time_save}\s#{monero}\n") }

# you could create a cron job that runs every day
# at a certain time to track the changes of your crypto.


require 'CryptoPriceFinder'
require 'date'
time = Time.new
time_save = time.strftime("%m/%d/%Y\s%I:%M%p")
monero = CryptoPriceFinder::monero(6.1)
File.open("save.txt", 'a') { |file| file.write("#{time_save}\s#{monero}\n") }

# you could create a cron job that runs every day at a certain time to track the changes of your crypto.

=begin
avg   = 0
count = 0
File.readlines("save.txt").each do |line|
	price = line.split("\s")[2]
	avg   += price.to_i
	count += 1
end
puts "Count:\s#{count}\n"
puts "AVG:\s#{avg}\n"


puts "#{avg / count.round(4)}"
=end
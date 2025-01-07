require 'CryptoPriceFinder'
# gets the last line of save.txt
check = File.readlines("save.txt").last
date  = check.split("\s")[0]
time  = check.split("\s")[1]
price = check.split("\s")[2]

xmr = 6.6
xmr_price = CryptoPriceFinder::monero(xmr)


message = "
The price is greater than the price on #{date} at #{time}
The price on #{date} is #{price}
The current price is: #{xmr_price}
"

if xmr_price.to_i >= price.to_i
	puts message
else
	puts "The price is not greater :("
	puts "Past Price:  #{price}"
	puts "Current Price: #{xmr_price}"
end
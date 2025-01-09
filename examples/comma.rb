require 'CryptoPriceFinder'
# get the price and round 2

xmr_price = CryptoPriceFinder::monero(6.7).round(2).to_s

# add a comma to the price
puts xmr_price.comma

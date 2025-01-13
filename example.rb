# frozen_string_literal: true

require './lib/CryptoPriceFinder'
xmr_price = CryptoPriceFinder.monero(6.7).round(2).to_s

# add a comma to the price
puts xmr_price.comma

# frozen_string_literal: true

require 'CryptoPriceFinder'
monero  = CryptoPriceFinder.monero(6.1)
stellar = CryptoPriceFinder.stellar(69)
bitcoin = CryptoPriceFinder.bitcoin(0.0004)

puts "You own $ #{monero + stellar + bitcoin} in crypto"

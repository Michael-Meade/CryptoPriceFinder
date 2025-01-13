# frozen_string_literal: true

require 'CryptoPriceFinder'
xmr = 6.6
usd_xmr = CryptoPriceFinder.monero(xmr)

btc = 0.103
usd_btc = CryptoPriceFinder.bitcoin(btc)

xlm = 6014
usd_xlm = CryptoPriceFinder.stellar(xlm)

total = usd_xmr + usd_btc + usd_xlm
xlm_percent = usd_xlm.to_f / total * 100.0
xmr_percent = usd_xmr.to_f / total * 100.0
btc_percent = usd_btc.to_f / total * 100.0

puts "XLM Hodling:\s#{xlm_percent.round(3)}%"
puts "XMR Hodling:\s#{xmr_percent.round(3)}%"
puts "BTC Hodling:\s#{btc_percent.round(3)}%"

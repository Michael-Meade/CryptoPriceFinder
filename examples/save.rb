require 'CryptoPriceFinder'
require 'date'
=begin
time = Time.new
time_save = time.strftime("%m/%d/%Y\s%I:%M%p")
monero = CryptoPriceFinder::monero(6.1)
File.open("save.txt", 'a') { |file| file.write("#{time_save}\s#{monero}\n") }

# you could create a cron job that runs every day at a certain time to track the changes of your crypto.


=end
xmr = 6.6
usd_xmr = CryptoPriceFinder::monero(xmr)

btc = 0.103
usd_btc = CryptoPriceFinder::bitcoin(btc)


xlm = 6014
usd_xlm = CryptoPriceFinder::stellar(xlm)


total = usd_xmr + usd_btc + usd_xlm
xlm_percent = usd_xlm.to_f / total.to_f * 100.0
xmr_percent = usd_xmr.to_f / total * 100.0
btc_percent = usd_btc.to_f / total * 100.0

puts xlm_percent + btc_percent + xmr_percent
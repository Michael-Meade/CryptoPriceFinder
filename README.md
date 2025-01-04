# CryptoPriceFinder

Fetches cryptocurrency prices from DuckDuckGo. Converts crypto prices into USD prices. 

## Installation
```ruby
gem install httparty
gem install CryptoPriceFinder
```

## Usage

This shows the basic usage of the gem. It can get the prices of crypto in USD. 

```ruby
puts "Monero:\s"      + CryptoPriceFinder::monero(6.6).to_s
puts "Bitcoin:\s"     + CryptoPriceFinder::bitcoin(3).to_s
puts "Stellar:\s"     + CryptoPriceFinder::stellar(4).to_s
puts "DogeCoin:\s"    + CryptoPriceFinder::dogecoin(4).to_s
puts "Etherum:\s"     + CryptoPriceFinder::ethereum(4).to_s
puts "Ripple:\s"      + CryptoPriceFinder::ripple(5).to_s
puts "Tron:\s"        + CryptoPriceFinder::tron(4).to_s
puts "Solana:\s"      + CryptoPriceFinder::solana(4).to_s
puts "BitcoinCash:\s" + CryptoPriceFinder::bitcoin_cash(4).to_s
puts "PEPE:\s"        + CryptoPriceFinder::pepe(3).to_s
puts "Litecoin:\s"    + CryptoPriceFinder::litecoin(3).to_s
puts "Polkadot:\s"    + CryptoPriceFinder::polkadot(3).to_s
puts "ChainLink:\s"   + CryptoPriceFinder::chainlink(2).to_s
puts "Shiba Inu:\s"   + CryptoPriceFinder::shiba_inu(3).to_s
puts "Filecoin:\s"    + CryptoPriceFinder::filecoin(4).to_s
```

Create a cronjob to run the code below every day to see and save how much crypto you own. This code will get the prices of the crypto and save the information in a txt file named `save.txt`. This example can be found in the `/examples/` folder.
```ruby
time = Time.new
time_save = time.strftime("%m/%d/%Y\s%I:%M%p")
monero = CryptoPriceFinder::monero(6.1)
File.open("save.txt", 'a') { |file| file.write("#{time_save}\s#{monero}\n") }

# you could create a cron job that runs every day at a certain time to track the changes of your crypto.
```

```ruby
require 'CryptoPriceFinder'
xmr = 6.6
usd_xmr = CryptoPriceFinder::monero(xmr)

btc = 0.103
usd_btc = CryptoPriceFinder::bitcoin(btc)


xlm = 6014
usd_xlm = CryptoPriceFinder::stellar(xlm)


total = usd_xmr + usd_btc + usd_xlm
xlm_percent = usd_xlm.to_f / total * 100.0
xmr_percent = usd_xmr.to_f / total * 100.0
btc_percent = usd_btc.to_f / total * 100.0



puts "XLM Hodling:\s#{xlm_percent.round(3)}%"
puts "XMR Hodling:\s#{xmr_percent.round(3)}%"
puts "BTC Hodling:\s#{btc_percent.round(3)}%"
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/CryptoPriceFinder.

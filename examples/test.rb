require 'CryptoPriceFinder'
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
puts "BAT:\s"         + CryptoPriceFinder::bat(5).to_s
puts "BNB:\s"         + CryptoPriceFinder::bnb(6554).to_s
puts "Bonk:\s"        + CryptoPriceFinder::bonk(444444).to_s
puts "Ravencoin:\s"   + CryptoPriceFinder::ravencoin(887).to_s
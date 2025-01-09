
require 'CryptoPriceFinder'

menu = "
1) Get price on Monero
2) Get price on Stellar
3) Get price on Bitcoin
4) Get price on Dogecoin
5) Get price on Ethereum
6) Get price on Ripple
7) Get price on Tron
8) Get price on Tether
9) Get price on Solana
10) Get price on BitcoinCash
11) Get price on Pepe
12) Get price on LiteCoin
13) Get price on Polkadot
14) Get price on ChainLink
15) Get price on Shiba Inu
16) Get price on FileCoin
17) Get price on BAT
18) Get price on BNB
19) Get price on Bonk
20) Get price on RavenCoin
21) Get price on USDC
22) Get price on Cardano
23) Get price on SUI
24) Get price on uniswap
25) Get price on fantom
26) Get price on FartCoin
27) Get price on NEO
28) Get price on FTK Token
29) Get price on Flow
30) Get price on WorldCoin
31) Get price on Vechain
32) Parse to find average
\n"

print(menu)
print("Enter Number:")
num = gets.chomp.to_i
if num.to_i < 32
	print("Enter amount of Crypto:")
	amount = gets.chomp
end
print("\n\n\n\n")
case num
when 1
	puts CryptoPriceFinder::monero(amount)
when 2
	puts CryptoPriceFinder::stellar(amount)
when 3
	puts CryptoPriceFinder::bitcoin(amount)
when 4
	puts CryptoPriceFinder::dogecoin(amount)
when 5
	puts CryptoPriceFinder::ethereum(amount)
when 6
	puts CryptoPriceFinder::ripple(amount)
when 7
	puts CryptoPriceFinder::tron(amount)
when 8
		puts CryptoPriceFinder::tether(amount)
when 9 
	puts CryptoPriceFinder::solana(amount)
when 10
	puts CryptoPriceFinder::bitcoin_cash(amount)
when 11
	puts CryptoPriceFinder::pepe(amount)
when 12
	puts CryptoPriceFinder::litecoin(amount)
when 13
	puts CryptoPriceFinder::polkadot(amount)
when 14
	puts CryptoPriceFinder::chainlink(amount)
when 15
	puts CryptoPriceFinder::shiba_inu(amount)
when 16
	puts CryptoPriceFinder::filecoin(amount)
when 17
	puts CryptoPriceFinder::bat(amount)
when 18
	puts CryptoPriceFinder::bnb(amount)
when 19
	puts CryptoPriceFinder::bonk(amount)
when 20
	puts CryptoPriceFinder::ravencoin(amount)
when 21
	puts CryptoPriceFinder::usdc(amount)
when 22
	puts CryptoPriceFinder::cardano(amount)
when 23
	puts CryptoPriceFinder::sui(amount)
when 24
	puts CryptoPriceFinder::uniswap(amount)
when 25
	puts CryptoPriceFinder::fantom(amount)
when 26
	puts CryptoPriceFinder::fartcoin(amount)
when 27
	puts CryptoPriceFinder::neo(amount)
when 28
	puts CryptoPriceFinder::ftx_token(amount)
when 29
	puts CryptoPriceFinder::flow(amount)
when 30
	puts CryptoPriceFinder::worldcoin(amount)
when 31
	puts CryptoPriceFinder::vechain(amount)
when 32
	print("Enter the file name you want to parse: ")
	file_name = gets.chomp
	total     = 0
	count     = 0
	if File.exist?(file_name)
		File.readlines(file_name).each do |line|
			price = line.split("\s")[2]
			total   += price.to_i
			count += 1
		end
		puts "Count:\s#{count}\n"
		puts "total:\s#{total}\n"

		new_avg = total / count.round(4)

		# adds comma to the numbers.
		puts "AVG:\s#{new_avg.to_s.gsub(/\B(?=(...)*\b)/, ',')}"
	else 
		puts "\n\n\nFile does not exist!"
	end
end
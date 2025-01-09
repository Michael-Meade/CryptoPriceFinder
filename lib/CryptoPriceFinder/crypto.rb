require 'json'
require 'httparty'
class String
	def comma
		self.to_s.reverse.scan(/(?:\d*\.)?\d{1,3}-?/).join(',').reverse
	end
end
module CryptoPriceFinder
	class << self
		URL = "https://duckduckgo.com/js/spice/cryptocurrency/"
		def clean(input)
			input.gsub("ddg_spice_cryptocurrency(", "").gsub(");", "").strip
		end
		private
		def http(crypto, fiat, amount)
			r = HTTParty.get(File.join(URL, crypto, fiat, amount.to_s)).body
			r_clean = clean(r)
			p r_clean
			json = JSON.parse(r_clean)["data"]["quote"]
			q = json.keys.shift.to_s
		json[q]["price"].round(4)
		end
		public
		def monero(amount)
			http("xmr", "usd", amount)
		end
		def stellar(amount)
			http("xlm", "usd", amount)
		end
		def bitcoin(amount)
			http("btc", "usd", amount)
		end
		def dogecoin(amount)
			http("doge", "usd", amount)
		end
		def ethereum(amount)
			http("eth", "usd", amount)
		end
		def ripple(amount)
			http("xrp", "usd", amount)
		end
		def tron(amount)
			http("trx", "usd", amount)
		end
		def tether(amount)
			http("usdt", "usd", amount)
		end
		def solana(amount)
			http("sol", "usd", amount)
		end
		def bitcoin_cash(amount)
			http("bch", "usd", amount)
		end
		def pepe(amount)
			http("pepe", "usd", amount)
		end
		def litecoin(amount)
			http("ltc", "usd", amount)
		end
		def polkadot(amount)
			http("dot", "usd", amount)
		end
		def chainlink(amount)
			http("link", "usd", amount)
		end
		def shiba_inu(amount)
			http("shib", "usd", amount)
		end
		def filecoin(amount)
			http("fil", "usd", amount)
		end
		def bat(amount)
			http("bat", "usd", amount)
		end
		def bnb(amount)
			http("bnb", "usd", amount)
		end
		def bonk(amount)
			http("bonk", "usd", amount)
		end
		def ravencoin(amount)
			http("rvn", "usd", amount)
		end
		def usdc(amount)
			http("usdc", "usd", amount)
		end
		def cardano(amount)
			http("ada", "usd", amount)
		end
		def sui(amount)
			http("sui", "usd", amount)
		end
		def uniswap(amount)
			http("uni", "usd", amount)
		end
		def fantom(amount)
			http("ftm", "usd", amount)
		end
		def fartcoin(amount)
			http("fartcoin", "usd", amount)
		end
		def neo(amount)
			http("neo", "usd", amount)
		end
		def ftx_token(amount)
			http("ftt", "usd", amount)
		end
		def flow(amount)
			http("flow", "usd", amount)
		end
		def worldcoin(amount)
			http("wld", "usd", amount)
		end
		def vechain(amount)
			http("vet", "usd", amount)
		end
	end	
end

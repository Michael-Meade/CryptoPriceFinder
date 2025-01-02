# frozen_string_literal: true

require_relative "lib/CryptoPriceFinder/version"

Gem::Specification.new do |spec|
  spec.name = "CryptoPriceFinder"
  spec.version = CryptoPriceFinder::VERSION
  spec.authors = ["Michael-Meade"]
  spec.email = ["noway@lol.com"]
  spec.licenses  = "Ruby"
  spec.summary = "Fetch Cryptocurrency prices from DuckDuckGo"
  spec.description = "Fetches Cryptocurrency prices from DuckDuckGo."
  spec.required_ruby_version = ">= 3.0.0"
  spec.homepage = "https://github.com/Michael-Meade/CryptoPriceFinder"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  File.basename(__FILE__)
  spec.files = Dir.glob('lib/**/*', File::FNM_DOTMATCH)
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "httparty", "0.22.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end

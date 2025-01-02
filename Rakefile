# frozen_string_literal: true

require "bundler/gem_tasks"
task default: %i[]


def all
end
namespace "gems" do
  desc "Building gem, Push gem, Install Gem"
  task :all do
    begin
      require "colorize"
      gemfile = Dir.glob("*.gem").each { |f| f }.shift
      if !gemfile.nil?
        if File.exist?(gemfile)
          puts "Deleting #{gemfile}...\n".red
          File.delete(gemfile)
          puts "Building gem...\n".red
          %x(gem build CryptoPriceFinder.gemspec)
          puts "Pushing Gem...\n".red
          begin
            sh "gem push #{Dir.glob("*.gem").each { |f| f }.shift}"
          rescue
            puts "ERROR in Pushing...\n".red
          end
          puts "[+] Installing gem...\n"
          sh "gem install #{Dir.glob("*.gem").each { |f| f }.shift}"
        end
      else
        puts "No gem file found..."
        puts "Building gem...\n".red
	    %x(gem build CryptoPriceFinder.gemspec)
	    puts "Pushing Gem...\n".red
	    begin
	    	sh "gem push #{Dir.glob("*.gem").each { |f| f }.shift}"
	    rescue
	        puts "ERROR in Pushing...\n".red
	    end
	      puts "[+] Installing gem...\n"
	      sh "gem install #{Dir.glob("*.gem").each { |f| f }.shift}"
      end
    rescue => e
      puts e
    end
  end
end
# frozen_string_literal: true

require 'bundler/gem_tasks'
task default: %i[]

class String
  def red = "\e[31m#{self}\e[0m"
  def green = "\e[32m#{self}\e[0m"
end

def remove_gem
  gemfile = Dir.glob('*.gem').each { |f| }.shift
  return if gemfile.nil?
  return unless File.exist?(gemfile)

  puts "Deleting #{gemfile}...\n".red
  File.delete(gemfile)
end

def build_gem
  puts "Building gem...\n".green
  `gem build CryptoPriceFinder.gemspec`
end

def push_gem
  sh "gem push #{Dir.glob('*.gem').each { |f| }.shift}"
rescue StandardError
  puts "ERROR in Pushing...\n".red
end

def installing_gem
  puts "[+] Installing gem...\n".green
  sh "gem install #{Dir.glob('*.gem').each { |f| }.shift}"
  puts "\n\n[+] Gem installed...".green
end

namespace 'gems' do
  desc 'Building gem, Push gem, Install Gem'
  task :all do
    # removes any .gem files.
    remove_gem
    # builds the gem using the gemspec.
    build_gem
    # push the gem to rubygems.
    push_gem
    # Install the new version of the gem.
    installing_gem
  end
end

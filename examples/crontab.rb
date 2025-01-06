require 'CryptoPriceFinder'
require 'date'


# first install whenever gem ( gem install whenever )
# Then run:  wheneverize .
# Now remove =begin and =end and paste this in the /config/schedule.rb file.

=begin
every 1.day, at: '12:15 pm' do
  rake "cron"
end
=end

# run: whenever --update-crontab
# Make sure the gem is installed under the root account.
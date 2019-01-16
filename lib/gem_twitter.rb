#****************************************************************************
# RUBY - Gem Twitter
#****************************************************************************
#   Ruby's Program - gem_twitter
#   Written by: Guillaume CHRISTE
# 	Date: 16-Jan-2019
#   
#   Description:
# 		- 
# 		- 
# 	Gems:
		require 'dotenv'
		Dotenv.load 
		require 'rubocop'
		require 'twitter'
#
#****************************************************************************
def gem_twitter
	#Test connection
	client = Twitter::REST::Client.new do |config|
	  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
	  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
	  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
	  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
	end

	#client.update('Mon premier tweet en Ruby !!!!')
end

# End of gem_twitter .........................................................
#.............................................................................
#.............................................................................
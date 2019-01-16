#****************************************************************************
# RUBY - Gem Twitter
#****************************************************************************
#   Ruby's Program - Gem Twitter
#   Written by: Guillaume CHRISTE
# 	Date: 16-Jan-2019
#   
#   Description:
# 		- Test connection to Twitter
# 		- Send first tweet
#
# 	Gems:
		require 'dotenv'
		Dotenv.load 
		require 'rubocop'
		require 'twitter'
#
#****************************************************************************
	#Test connection to twitter
	def login_twitter
		client = Twitter::REST::Client.new do |config|
		  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
		  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
		  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
		  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
		end
	end

	#Action on Twitter
	def gem_twitter
		client = login_twitter
		puts client
		if client != nil
	 		client.update('Mon premier tweet en Ruby !!!!')
	 	else puts "You're not connected to Twitter -- cuicui ..."
	 	end
	 end

# End of Gem Twitter .........................................................
#.............................................................................
#.............................................................................

gem_twitter
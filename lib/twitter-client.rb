require 'twitter'

class TwitterClient

  @@spammy_strings = ["RT", "://", "eddit", "2016", "IDEA BOT"]

  def initialize()
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["CONSUMER_KEY"]
      config.consumer_secret     = ENV["CONSUMER_SECRET"]
      config.access_token        = ENV["ACCESS_TOKEN"]
      config.access_token_secret = ENV["ACCESS_SECRET"]
    end
  end

  def send(msg)
    @client.update(msg)
    puts("Tweeted: '#{msg}'")
  end

  def get_own_timeline()
    @client.user_timeline("ideas_4_games")
  end

  def get_by_hashtag(hashtag)
    @client.search("##{hashtag}")
  end

  def remove_spam(tweets)
    tweets.select { |tweet| is_not_spammy(tweet) }
  end

  def is_not_spammy(tweet)
    okay = true
    @@spammy_strings.each do |s|
      if tweet.include?(s)
        okay = false
      end
    end
    return okay
  end

end

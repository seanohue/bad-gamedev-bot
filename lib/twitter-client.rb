require 'twitter'

class TwitterClient

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

  def filter_spam(tweet)
    ["RT", "://", "eddit", "2016"].each do |s|
      if tweet.include?(s)
        return false
      end
    end
    return true
  end

  def get_ten_original_tweets(tweets)
    tweets
      .first(100)
      .select { |tweet| filter_spam(tweet) }
  end

end

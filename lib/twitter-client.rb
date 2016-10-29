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

  def get_ten_original_tweets(tweets)
    selection = tweets.select { |tweet|  !(tweet.include?("RT @") || tweet.include?("://") || tweet.include?("reddit")) }
          .first(10)
    puts selection
    return selection
  end

end

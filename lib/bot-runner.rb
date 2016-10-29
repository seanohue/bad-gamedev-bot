class BotRunner

  def initialize(client)
    @client = client
  end

  def send(s)
    @client.send s
  end

  def get_timeline()
    get_tweet_content(@client.get_own_timeline)
  end

  def get_tweet_content(tweets)
    return tweets.map do |tweet|
      "#{tweet.text}"
    end
  end

  def get_twitter_sources()
    sources = [
      terriblegameideas,
      greatgameideas,
      awfulgameideas,
      gameideas,
      mygameideas,
      gameidea,
      horrorgameidea,
      rpgidea,
      videogameidea
    ].map do |hashtag|
        @client.get_by_hashtag(hashtag)
      end
    return @client.get_ten_most_favorited(sources).flatten
  end
  
end

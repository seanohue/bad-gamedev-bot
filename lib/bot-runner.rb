class BotRunner

  @@twitter_hashtag_sources = [
    "terriblegameideas",
    "greatgameideas",
    "awfulgameideas",
    "gameideas",
    "mygameideas",
    "gameidea",
    "horrorgameidea",
    "rpgidea",
    "videogameidea",
    "awesomegame",
    "coolgame",
    "gameprototype"
  ]

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
    tweets.map { |tweet| "#{tweet.text}" }
  end

  def get_twitter_sources()
    @@twitter_hashtag_sources
      .map { |hashtag| get_tweet_content(@client.get_by_hashtag(hashtag)) }
      .map { |tweets| @client.remove_spam(tweets) }
      .flatten
  end

end

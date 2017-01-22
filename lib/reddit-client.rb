require 'redd'

class RedditClient

  def initialize()

    @client = Redd.it(:script, 
      ENV["REDDIT_CLIENT_ID"], 
      ENV["REDDIT_SECRET"], 
      ENV["REDDIT_USERNAME"], 
      ENV["REDDIT_PASSWORD"], 
      user_agent: "OSX:badgamedevbot:v0.1.0:#{ENV["REDDIT_USERNAME"]}"
    )

    @client.authorize!
  end

end

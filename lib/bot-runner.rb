class BotRunner

  def initialize(client)
    @client = client
  end

  def say_dumb_things()
    @client.send('do u like gaem')
  end

  def get_timeline()
    return @client.get_own_timeline.map do |tweet|
      "#{tweet.text}"
    end
  end


end

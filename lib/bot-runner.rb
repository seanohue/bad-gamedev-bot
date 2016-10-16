class BotRunner

  def initialize(client)
    @client = client
  end

  def say_dumb_things()
    @client.send('do u like gaem')
  end

  def print_timeline()
    @client.get_own_timeline.each do |tweet|
      puts("#{tweet.text}")
    end
  end

end

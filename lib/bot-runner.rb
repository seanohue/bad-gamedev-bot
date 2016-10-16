class BotRunner

  def initialize(client)
    @client = client
  end

  def say_dumb_things()
    @client.send('i liek gaem')
  end

end

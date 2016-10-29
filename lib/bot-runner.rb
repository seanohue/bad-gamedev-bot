class BotRunner

  def initialize(client)
    @client = client
  end

  def send(s)
    @client.send s
  end

  def get_timeline()
    return @client.get_own_timeline.map do |tweet|
      "#{tweet.text}"
    end
  end


end

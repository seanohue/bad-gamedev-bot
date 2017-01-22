Bad Gamedev Bot
===============

### How to use:
Well, right now, don't. It doesn't do much.

But if you really want to, then just:
- Create a `.rbenv-vars` file in the root of the repo.
- Add your Twitter API credentials to the aforementioned file as the variables `TWITTER_CONSUMER_KEY`, `TWITTER_CONSUMER_SECRET`, `TWITTER_ACCESS_TOKEN`, and `TWITTER_ACCESS_SECRET`.
- Install all the gems
- Run `ruby bin/bad-gamedev` and it will tweet something dumb automatically.

#### How do it work?
It uses the `twitter` gem and the `markymarkov` gem to learn about terrible and terribly funny game ideas, then tweet them out to the masses. Or at least, it will do that eventually. One day. Hopefully soon.


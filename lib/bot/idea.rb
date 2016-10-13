def get_bad_idea()
  starters = [
    'i have good idea: ',
    'dream last night, could be game: ',
    'here is idea i had for game, it is ',
    'here is game idea, ',
    'best game idea today ',
    'this morning, great idea ',
    'shower idea for game ',
    'game idea: ',
    'another game idea: ',
    'here is idea ',
    'my new project is ',
    'best project ',
    'anyone want game ',
    'wealthy game idea ',
    'ambitious project: ',
    'maek game ',
    'lets do a game '
  ]

  characters = [
    'moth',
    'potato',
    'communists',
    'rich people',
    'canaries',
    'pancakes',
    'gang members',
    'superhero',
    'boat',
    'shark',
    'giant monstar',
    'skeleton',
    'police',
    'burglars',
    'fireman',
    'princess',
    'pony',
    'helicopter',
    'aliens',
    'floppy bird',
    'garbage person',
    'swamp thing',
    'space station'
  ]

  settings = [
    'dumpster',
    'a boat',
    'big city town',
    'ocean island',
    'an airplane',
    'future world',
    'dinosaur land',
    'dragon lair',
    'wild west',
    'a castle',
    'mexico',
    'dungeon',
    'helicopter',
    'comet',
    'the moon',
    'jupiter colony',
    'outer space'
  ]

  items = [
    'space ship',
    'potato',
    'hat',
    'planet',
    'gold medal',
    'sword',
    'shooty gun',
    'computer',
    'machine',
    'house',
    'castle',
    'taco',
    'friendship',
    'potion',
    'helicopter',
    'boject',
    'meteor',
    'horse',
    'dumpster',
    'fire',
    'dumpster fire',
    'spaceship'
  ]

  goals = [
    'be biggest ' + characters.sample,
    'beat up all the ' + characters.sample,
    'become ' + (characters + settings).sample,
    'find the ' + (characters + items).sample,
    'get to ' + settings.sample,
    'win the ' + items.sample,
    'make the best ' + items.sample,
    'destroy the ' + (characters + settings + items).sample,
    'hide from the ' + characters.sample,
    'collect the ' + items.sample,
  ]

  goals += [
    'never ' + goals.sample,
    'always ' + goals.sample,
    'be first to ' + goals.sample
  ]

  contexts = [
    'you play as ' + characters.sample,
    'it is set in ' + settings.sample,
    'enemies are ' + characters.sample,
    'the goal is ' + goals.sample,
    'you get the ' + items.sample
  ]

  contexts += [
    'main idea is ' + (contexts + goals).sample
  ]

  return starters.sample + 'where ' + contexts.sample
end

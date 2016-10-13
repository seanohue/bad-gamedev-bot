

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
    'ambitious project: '
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
    'giant monstar'
  ]

  settings = [
    'a boat',
    'big city town',
    'ocean island',
    'an airplane',
    'future world',
    'dinosaur land',
    'dragon lair',
    'wild west',
    'a castle',
    'mexico'
  ]

  items = [
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
    'friendship'
  ]

  goals = [
    'be biggest ' + characters.sample,
    'beat up all the ' + characters.sample,
    'become ' + (characters + settings).sample,
    'find the ' + (characters + items).sample,
    'get to ' + settings.sample,
    'win the ' + items.sample,
    'make the best ' + items.sample
  ]

  contexts = [
    'you play as ' + characters.sample,
    'it is set in ' + settings.sample,
    'enemies are ' + characters.sample,
    'the goal is ' + goals.sample,
    'you get the ' + items.sample
  ]

  return starters.sample + 'where ' + contexts.sample + ' and ' + contexts.sample
end

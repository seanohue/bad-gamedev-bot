require 'marky_markov'

class DictionaryBuilder

  def initialize()
    @dict_path = '../dicts/'
    @dict_filename = 'bad_gamedev.mmd'
    @dict = MarkyMarkov::TemporaryDictionary.new
  end

  def add_str_to_dict(str)
    @dict.parse_string(str)
  end

  def get_sentence_from_dict(n)
    n = n || 1
    return dict.generate_n_sentences n
  end

end

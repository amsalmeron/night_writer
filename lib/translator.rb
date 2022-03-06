require './lib/grid'
require './lib/english_dictionary'


class Translator
  
  include EnglishDictionary

  def initialize(message)
    @message = message
    @grid = Grid.new
  end

end

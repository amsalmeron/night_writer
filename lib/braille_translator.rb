require './lib/braille_dictionary'


class BrailleTranslator

  include BrailleDictionary

  def initialize(message)
    @message = message
  end

end

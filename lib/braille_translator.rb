require './lib/braille_dictionary'


class BrailleTranslator

  include BrailleDictionary

  def initialize(message)
    @message = message
  end

  def braille_to_english_array
    nested_array = []
    dictionary = braille_dictionary
      characters = (File.read(@message).gsub("\n","")).split('')
      characters.each_slice(2) do |a,b|
        nested_array << [a,b]
      end
      dictionary[nested_array] if dictionary[nested_array] != nil
  end

end

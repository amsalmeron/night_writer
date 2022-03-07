require './lib/braille_dictionary'


class BrailleTranslator

  include BrailleDictionary

  def initialize(message)
    @message = message
  end

  def braille_to_english_array
      i = 0
      words = []
      characters = (File.read(@message)).split("\n")
      characters.each_slice(3) do |top,mid,bottom|
        (top.length / 2).times do
          letter = []
          letter << top[i..i+1]
          letter << mid[i..i+1]
          letter << bottom[i..i+1]
          words << braille_dictionary[letter]
          i += 2
        end
      end
      words.join
  end

end

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

  def line_split
    message = (File.read(@message)).split("\n")
  end

  def line_group
    a = 0
    english_rows = []
    (line_split.count / 3).times do
      english_rows << line_split[a..a+2]
      a += 3
    end
    english_rows
  end

  # def character_split
  #   line_split.each do |line|
  #     line.split('')
  #   end
  # end

end

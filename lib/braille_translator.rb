require './lib/braille_dictionary'


class BrailleTranslator

  include BrailleDictionary

  def initialize(message)
    @message = message
  end

  def braille_to_english_array
    words = []
    characters = (File.read(@message)).split("\n")
    each_line = characters.each_slice(3).to_a
    add_space = each_line.count
    each_line.each do |line|
      line.each_slice(3) do |top,mid,bottom|
        i = 0
        (top.length / 2).times do
          letter = []
          letter << top[i..i+1]
          letter << mid[i..i+1]
          letter << bottom[i..i+1]
          words << braille_dictionary[letter]
          i += 2
        end
      end
      words << " " if add_space > 1
      add_space -= 1
    end
    words.join.gsub("  ", " ")
  end

end

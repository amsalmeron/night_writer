require './lib/grid'
require './lib/english_dictionary'


class Translator

  include EnglishDictionary

  def initialize(message)
    @message = message
    @grid = Grid.new
  end

  def english_to_braille_array
    dictionary = english_dictionary
      characters = (File.read(@message).strip).split('')
      characters.flat_map do |character|
        p dictionary[character] if dictionary[character] != nil
      end
  end

  def top_array_to_braille
    total = 0
    characters = []
    english_to_braille_array.join.each_char do |char|
      characters << char if total % 6 == 0 || total % 6 == 1
      total += 1
    end
    p characters.join
  end

  def mid_array_to_braille
    total = 0
    characters = []
    english_to_braille_array.join.each_char do |char|
      characters << char if total % 6 == 2 || total % 6 == 3
      total += 1
    end
    p characters.join
  end

  def bottom_array_to_braille
    total = 0
    characters = []
    english_to_braille_array.join.each_char do |char|
      characters << char if total % 6 == 4 || total % 6 == 5
      total += 1
    end
    p characters.join
  end

end

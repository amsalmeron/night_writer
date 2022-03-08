require './lib/english_dictionary'


class Translator

  include EnglishDictionary

  def initialize(message)
    @message = message
  end

  def english_to_braille_array
    dictionary = english_dictionary
      characters = (File.read(@message).strip).split('')
      braille_array = characters.flat_map do |character|
        dictionary[character] if dictionary[character] != nil
      end
  end

  def top_array_to_braille
    total = 0
    characters = []
    english_to_braille_array.join.each_char do |char|
      characters << char if total % 6 == 0 || total % 6 == 1
      total += 1
    end
    characters
  end

  def mid_array_to_braille
    total = 0
    characters = []
    english_to_braille_array.join.each_char do |char|
      characters << char if total % 6 == 2 || total % 6 == 3
      total += 1
    end
    characters
  end

  def bottom_array_to_braille
    total = 0
    characters = []
    english_to_braille_array.join.each_char do |char|
      characters << char if total % 6 == 4 || total % 6 == 5
      total += 1
    end
    characters
  end

  def line_counter
    char = 0
    top = []
    mid = []
    bottom = []
    ((top_array_to_braille.join.length) / 80.0).ceil.times do
      if (top_array_to_braille.join.length) - char > 80
        top << top_array_to_braille[char..char + 79]
        mid << mid_array_to_braille[char..char + 79]
        bottom << bottom_array_to_braille[char..char + 79]
        char += 80
      else
        top << top_array_to_braille[char..-1]
        mid << mid_array_to_braille[char..-1]
        bottom << bottom_array_to_braille[char..-1]
      end
    end
    message = [top,mid,bottom]
  end

  def braille_message
    row = 0
    message = ''
    until row == ((top_array_to_braille.join.length) / 80.0).ceil
      top_line = line_counter[0][row].join
      mid_line = line_counter[1][row].join
      bottom_line = line_counter[2][row].join
      message << (top_line + "\n" + mid_line + "\n" + bottom_line + "\n")
      row += 1
    end
    message
  end

end

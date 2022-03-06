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
    #File.readlines(@message, chomp: true).each do |line|
      characters = (File.read(@message).strip).split('')
      characters.flat_map do |character|
        p dictionary[character] if dictionary[character] != nil
      end
    #end
  end

end

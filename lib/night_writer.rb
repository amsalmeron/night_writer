require './lib/file_reader'
require './lib/file_writer'
require './lib/translator'

class NightWriter
  def initialize
    @input = ARGV[0]
    @output = ARGV[1]
    @reader = FileReader.new
    @writer = FileWriter.new
    @translator = Translator.new(@input)
  end

  def translate
    require "pry"; binding.pry
    @translator
  end

  def create_new_file
    @writer.write_braille(@input)
  end

  def display
    if @input != nil
    puts "Created '#{@output}' containing #{File.read(@input).length} characters"
    end
  end
end

a = NightWriter.new
a.translate
a.create_new_file
a.display

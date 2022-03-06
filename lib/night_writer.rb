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

  # def translate
  #   @translator.top_array_to_braille
  #   @translator.mid_array_to_braille
  #   @translator.bottom_array_to_braille
  # end

  def create_new_braille_file
    @output = File.new("braille.txt", "w")
    @output.puts(@translator.top_array_to_braille)
    @output.puts(@translator.mid_array_to_braille)
    @output.puts(@translator.bottom_array_to_braille)
    @output.close
    #@writer.write_braille(@input)
  end

  def display
    if @input != nil
    puts "Created '#{File.basename(@output)}' containing #{File.read(@input).length} characters"
    end
  end
end

a = NightWriter.new
a.create_new_braille_file
a.display

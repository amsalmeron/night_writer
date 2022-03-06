require './lib/file_reader'
require './lib/file_writer'
#require './lib/braille_translator'

class NightReader
  def initialize
    @input = ARGV[0]
    @output = ARGV[1]
    @reader = FileReader.new
    @writer = FileWriter.new
    #@translator = BrailleTranslator.new(@input)
  end

  # def create_new_english_file
  #   @output = File.new(ARGV[1], "w")
  #   @output.puts(@translator.english_message)
  #   @output.close
  # end

  def display
    if @input != nil
    puts "Created '#{File.basename(@output)}'" \
    " containing #{File.read(@input).length - 1} characters"
    end
  end
end

new_translation = NightReader.new
# new_translation.create_new_english_file
new_translation.display
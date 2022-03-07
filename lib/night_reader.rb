require './lib/braille_translator'

class NightReader
  def initialize
    @input = ARGV[0]
    @output = ARGV[1]
    @translator = BrailleTranslator.new(@input)
  end

  def create_new_english_file
    @output = File.new(ARGV[1], "w")
    @output.puts(@translator.braille_to_english_array)
    @output.close
  end

  def display
    if @input != nil
    puts "Created '#{File.basename(@output)}'" \
    " containing #{(File.read(@input).length - 1) / 6} characters"
    end
  end
end

new_translation = NightReader.new
new_translation.create_new_english_file
new_translation.display

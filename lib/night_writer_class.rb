require './lib/translator'

class NightWriter
  def initialize
    @input = ARGV[0]
    @output = ARGV[1]
    @translator = Translator.new(@input)
  end

  def create_new_braille_file
    @output = File.new(ARGV[1], "w")
    @output.puts(@translator.braille_message)
    @output.close
  end

  def display
    if @input != nil
    puts "Created '#{File.basename(@output)}'" \
    " containing #{File.read(@input).length - 1} characters"
    end
  end
end

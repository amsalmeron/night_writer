require './lib/file_reader'
require './lib/file_writer'

class NightWriter
  def initialize
    @input = ARGV[0]
    @output = ARGV[1]
    @reader = FileReader.new
    @writer = FileWriter.new
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
a.create_new_file
a.display

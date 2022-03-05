require 'file_reader'

class NightWriter

  def initialize(ARGV[0],ARGV[1])
    @input = ARGV[0]
    @output = ARGV[1]
    @reader = FileReader.new
  end


end

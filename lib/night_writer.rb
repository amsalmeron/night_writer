require './lib/file_reader'
require './lib/file_writer'

# class NightWriter
#   def initialize(ARGV[0],ARGV[1])
#     @input = ARGV[0]
#     @output = ARGV[1]
#     @reader = FileReader.new
#   end
# end
input = ARGV[0]
output = ARGV[1]

puts "Created '#{output}' containing #{File.read(input).length} characters"

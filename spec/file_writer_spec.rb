require './lib/file_writer.rb'
require 'simplecov'
SimpleCov.start


RSpec.describe FileWriter do

  file = FileWriter.new
  ARGV[1] = './spec/fixtures/braille_spec.txt'

  it 'exists' do
    expect(file).to be_a(FileWriter)
  end

  it 'write a file' do
    if ARGV[1] == './spec/fixtures/braille_spec.txt'
      expect(file.write_braille('./spec/fixtures/message_spec.txt')).to eq(10)
    end
  end

end

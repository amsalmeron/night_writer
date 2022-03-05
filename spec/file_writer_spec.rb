require './lib/file_writer.rb'
require 'simplecov'
SimpleCov.start


RSpec.describe FileWriter do

  file = FileWriter.new
  ARGV[1] = './spec/fixtures/braille_spec.txt'

  it 'exists' do
    expect(file).to be_a(FileWriter)
  end

  it 'reads a file' do
    if ARGV[1] == 'braille.txt'
      expect(file.read_english).to eq('hello')
    end
  end

end

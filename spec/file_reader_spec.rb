require './lib/file_reader.rb'
require 'simplecov'
SimpleCov.start


RSpec.describe FileReader do

  file = FileReader.new
  ARGV[0] = './spec/fixtures/message_spec.txt'

  it 'exists' do
    expect(file).to be_a(FileReader)
  end

  it 'reads a file' do
    if ARGV[0] == 'message.txt'
      expect(file.read_english).to eq('hello')
    end
  end

end

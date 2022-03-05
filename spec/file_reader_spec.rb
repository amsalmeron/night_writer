require './lib/file_reader.rb'
require 'simplecov'
SimpleCov.start


RSpec.describe FileReader do

  file = FileReader.new
  ARGV[0] = './spec/fixtures/message_spec.txt'

  it 'exists' do
    file = FileReader.new
    expect(file).to be_a(FileReader)
  end

  it 'reads a file' do
    if ARGV[0] == './spec/fixtures/message_spec.txt'
      file = File.read('./spec/fixtures/message_spec.txt')
      expect(file).to eq("hello spec\n")
    end
  end

end

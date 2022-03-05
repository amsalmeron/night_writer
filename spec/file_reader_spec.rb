require './lib/file_reader.rb'


RSpec.describe FileReader do

  file = FileReader.new
  ARGV[0] = 'message.txt'

  it 'exists' do
    expect(file).to be_a(FileReader)
  end

  it 'reads a file' do
    if ARGV[0] == 'message.txt'
      expect(file.read_english).to eq('hello spec')
    end
  end

end

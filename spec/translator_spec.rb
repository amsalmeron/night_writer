require './lib/translator'
require 'simplecov'
SimpleCov.start


RSpec.describe Translator do

  interpretor = Translator.new('./spec/fixtures/testing.txt')

  it 'exists' do
    expect(interpretor).to be_a(Translator)
  end

  it 'can translate a letter' do
    expect(interpretor.english_to_braille_array).to eq([['0', '.'], ['.', '.'], ['.', '.']])
  end

end

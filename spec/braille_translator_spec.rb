require './lib/braille_translator'
require 'simplecov'
SimpleCov.start


RSpec.describe BrailleTranslator do

  interpretor = BrailleTranslator.new('./spec/fixtures/braille_test1.txt')
  interpretor_2 = BrailleTranslator.new('./spec/fixtures/braille_test2.txt')

  it 'exists' do
    expect(interpretor).to be_a(BrailleTranslator)
  end

end

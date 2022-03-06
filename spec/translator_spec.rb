require './lib/translator'
require 'simplecov'
SimpleCov.start


RSpec.describe Translator do

  interpretor = Translator.new('./spec/fixtures/testing.txt')
  interpretor_2 = Translator.new('./spec/fixtures/testing_2.txt')

  it 'exists' do
    expect(interpretor).to be_a(Translator)
  end

  it 'can translate letter "a" ' do
    expect(interpretor.english_to_braille_array).to eq([['0', '.'],
                                                        ['.', '.'],
                                                        ['.', '.']])
  end

  it 'can translate letter "ab" ' do
    expect(interpretor_2.english_to_braille_array).to eq([['0', '.'],
                                                        ['.', '.'],
                                                        ['.', '.'],
                                                        ['0', '.'],
                                                        ['0', '.'],
                                                        ['.', '.']])
  end

end

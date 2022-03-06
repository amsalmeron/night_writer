require './lib/translator'
require 'simplecov'
SimpleCov.start


RSpec.describe Translator do

  interpretor = Translator.new('./spec/fixtures/testing.txt')
  interpretor_2 = Translator.new('./spec/fixtures/testing_2.txt')
  interpretor_3 = Translator.new('./spec/fixtures/testing_over40char_spec.txt')

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

  it 'can print in colums' do
    expect(interpretor_2.top_array_to_braille).to eq(["0", ".", "0", "."])
    expect(interpretor_2.mid_array_to_braille).to eq([".", ".", "0", "."])
    expect(interpretor_2.bottom_array_to_braille).to eq([".", ".", ".", "."])
  end

  it 'can create new lines when braille message is too long' do
    expect(interpretor_3.line_counter.count).to eq(3)
  end

  it 'can sort through a nested array of braille by row' do
    expect(interpretor_3.braille_message.length).to eq(555)
  end

end

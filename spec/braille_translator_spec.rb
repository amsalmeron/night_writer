require './lib/braille_translator'
require 'simplecov'
SimpleCov.start


RSpec.describe BrailleTranslator do

  interpretor = BrailleTranslator.new('./spec/fixtures/braille_test1.txt')
  interpretor_2 = BrailleTranslator.new('./spec/fixtures/braille_test2.txt')
  interpretor_3 = BrailleTranslator.new('./spec/fixtures/braille_test3.txt')
  interpretor_4 = BrailleTranslator.new('./spec/fixtures/braille_test4.txt')

  it 'exists' do
    expect(interpretor).to be_a(BrailleTranslator)
  end

  it 'can translate a letter of braille to english' do
    expect(interpretor.braille_to_english_array).to eq("h")
  end

  it 'can translate a word from braille to englsih' do
    expect(interpretor_2.braille_to_english_array).to eq("hello world")
  end

  it 'can parse braille in peices between newlines' do
    expect(interpretor_3.line_split).to eq(["0.0.0.0.0.",
                                            "00.00.0..0",
                                            "....0.0.0.",
                                            ".00.0.0.00",
                                            "00.0000..0",
                                            ".00.0.0..."])
  end

  it 'can group braille into respective lines' do
    expect(interpretor_3.line_group).to eq([["0.0.0.0.0.",
                                            "00.00.0..0",
                                            "....0.0.0."],
                                            [".00.0.0.00",
                                            "00.0000..0",
                                            ".00.0.0..."]])
  end

  it 'can interpret braille on seperate lines' do
    expect(interpretor_3.braille_to_english_array).to eq("hello world")
    expect(interpretor_4.braille_to_english_array).to eq("hello world hello world")
  end



end

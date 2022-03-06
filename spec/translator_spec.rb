require './lib/translator'
require 'simplecov'
SimpleCov.start


RSpec.describe Translator do

  interpretor = Translator.new('fasho')

  it 'exists' do
    expect(interpretor).to be_a(Translator)
  end

end

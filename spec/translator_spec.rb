require './lib/translator.rb'
require 'simplecov'
SimpleCov.start


RSpec.describe Translator do

  interpretor = Translator.new

  it 'exists' do
    expect(interpretor).to be_a(Translator)
  end

end

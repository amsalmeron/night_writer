require './lib/grid'
require 'simplecov'
SimpleCov.start

RSpec.describe Grid do

  context 'Iteration 2: Building a Braille character grid' do
    grid = Grid.new(['.', '.'], ['.', '.'], ['.', '.'])
  
    it 'create a 3x2 grid' do
      expect(output1).to be_a(Grid)
      expect { output1.render }.to output(
        <<~EXPECTED
          ..
          ..
          ..
        EXPECTED
      ).to_stdout
    end

  end
end

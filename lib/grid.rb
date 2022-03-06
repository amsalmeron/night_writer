require './lib/translator'

class Grid

  attr_reader :top, :mid, :bottom

  def initialize
    @top = ['.','.']
    @mid = ['.','.']
    @bottom = ['.','.']
  end

  def render
    puts @top.join
    puts @mid.join
    puts @bottom.join
  end

end

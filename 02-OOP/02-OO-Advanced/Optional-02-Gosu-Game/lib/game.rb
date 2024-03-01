require 'gosu'
require_relative 'snake'

class Game < Gosu::Window

  def initialize
    super Snake::SIZE * 50, Snake::SIZE * 50
    self.caption = "Game"
  end

  def draw_rect(x, y, width, height, c, z=0, mode=:default)
  width = Snake::SIZE
  height = Snake::SIZE
  c = Gosu::Color::WHITE
  end

end

Game.new.show

# frozen_string_literal: true

# king piece features
class Knight
  attr_reader :name, :color, :char

  def initialize(color)
    @name = 'knight'
    @color = color
    @char = '♞' if color == 'black'
    @char = '♘' if color == 'white'
    @move_dir = %w[knight]
    @move_dist = 1
    @move_special = []
  end
end

# frozen_string_literal: true

# queen piece features
class Queen
  attr_reader :name, :color, :char

  def initialize(color)
    @name = 'queen'
    @color = color
    @char = '♛' if color == 'black'
    @char = '♕' if color == 'white'
    @move_dir = %w[ortho diag]
    @move_dist = 7
    @move_special = []
  end
end

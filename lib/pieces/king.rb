# frozen_string_literal: true

# king piece features
class King
  attr_reader :name, :color, :char

  def initialize(color)
    @name = 'king'
    @color = color
    @char = '♚' if color == 'black'
    @char = '♔' if color == 'white'
    @move_dir = %w[ortho diag]
    @move_dist = 1
    @move_special = %w[castle]
  end
end

# frozen_string_literal: true

# king piece features
class Pawn
  attr_reader :name, :color, :char

  def initialize(color)
    @name = 'pawn'
    @color = color
    @char = '♚' if color == 'black'
    @char = '♔' if color == 'white'
    @move_dir = %w[forward]
    @move_dist = 1
    @move_special = %w[diag_cap en_passant promotion]
  end
end

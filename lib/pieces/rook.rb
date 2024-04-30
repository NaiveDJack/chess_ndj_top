# frozen_string_literal: true

# rook piece features
class Rook
  attr_reader :name, :color, :char

  def initialize(color)
    @name = 'rook'
    @color = color
    @char = '♜' if color == 'black'
    @char = '♖	' if color == 'white'
    @move_dir = %w[ortho]
    @move_dist = 7
    @move_special = %w[castle]
  end
end

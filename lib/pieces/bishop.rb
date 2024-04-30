# frozen_string_literal: true

# bishop piece features
class Bishop
  attr_reader :name, :color, :char

  def initialize(color)
    @name = 'bishop'
    @color = color
    @char = '♝' if color == 'black'
    @char = '♗' if color == 'white'
    @move_dir = %w[diag]
    @move_dist = 7
    @move_special = []
  end
end
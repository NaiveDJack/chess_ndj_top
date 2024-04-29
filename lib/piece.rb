# frozen_string_literal: true

Dir['../lib/pieces/*.rb'].sort.each { |piece| require piece }

# module with methods common to all chess pieces
module Piece
  # king piece features
  # class King
  #   attr_reader :name, :color, :char

  #   def initialize(color)
  #     @name = 'king'
  #     @color = color
  #     @char = '♚' if color == 'black'
  #     @char = '♔' if color == 'white'
  #     @move_dir = %w[ortho diag]
  #     @move_dist = 1
  #     @move_special = %w[castle]
  #   end
  # end

  # creates a piece object according to input
  def create_piece(name, color)
    return unless %w[black white].include?(color)

    piece_name = Piece.const_get(name.to_s)
    piece_name.new(color)
  end
end

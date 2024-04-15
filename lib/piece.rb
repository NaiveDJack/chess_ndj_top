# frozen_string_literal: true

Dir['../lib/pieces/*.rb'].sort.each { |piece| require piece}

# module with methods common to all chess pieces
module Piece
  # creates a piece object according to input
  def create_piece(name, color)
    return unless %w[black white].include?(color)

    piece_name = Object.const_get(name.to_s)
    piece_name.new(color)
  end
end

# frozen_string_literal: true

require_relative '../lib/board'

# game main logic
class Game
  def initialize
    @board = Board.new
    pieces_setup
    # set game state = on
    # set turn = white
  end

  # sets the pieces for the start of the game
  def pieces_setup
    pieces_line = %w[rook rook knight knight bishop bishop queen king
                     king queen bishop bishop knight knight rook rook]
    ('a'..'h').each do |column|
      @board.set_piece(pieces_line.shift, 'black', :"#{column}8")
      @board.set_piece('pawn', 'black', :"#{column}7")
      @board.set_piece('pawn', 'white', :"#{column}2")
      @board.set_piece(pieces_line.shift, 'white', :"#{column}1")
    end

    # in board.squares.each |column|
    # 8 = set_piece( [black_pieces], black)
    # 2 = pawn
    # set black pieces: pawn x8
    # set white pieces: pawn x8
    # set white pieces: rook, knight, bishop, king, queen, bishop, knight, rook
  end
end

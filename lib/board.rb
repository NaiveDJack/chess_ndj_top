# frozen_string_literal: true

require_relative '../lib/pieces'

# legal movespace
class Board
  include Pieces

  attr_reader :squares

  def initialize
    @squares = {}

    ('a'..'h').each do |row|
      squares[:"#{row}"] = {}
      ('1'..'8').each do |column|
        squares[:"#{row}"][:"#{column}"] = create_piece('Square', 'white')
      end
    end
  end

  # returns the coordinates x and y of the square to be used by other functions
  def sqr_coord(string)
    return nil unless string.length == 2
    return nil unless ('a'..'h').include?(string[0])
    return nil unless ('1'..'8').include?(string[1])

    [string[0], string[1]]
  end

  # returns the content of a square at coordinates xy, only 2 length strings
  def sqr_content(array)
    @squares[:"#{array[0]}"][:"#{array[1]}"]
  end

  # generates a Piece object and places it on the board
  def set_piece(piece_name, piece_color, pos)
    where = sqr_coord(pos)
    @squares[:"#{where[0]}"][:"#{where[1]}"] = create_piece(piece_name, piece_color)
  end

  # visualization of the chessboard
  def show_board
    puts('', '  ┌───┬───┬───┬───┬───┬───┬───┬───┐')
    8.downto(1) do |row|
      print("#{row} │ ")
      @squares.each_value do |column|
        print(column[:"#{row}"].char, ' │ ')
      end
      row == 1 ? puts(' ', '  └───┴───┴───┴───┴───┴───┴───┴───┘') : puts(' ', '  ├───┼───┼───┼───┼───┼───┼───┼───┤')
    end
    puts '    a   b   c   d   e   f   g   h'
  end
end

# frozen_string_literal: true

# legal movespace
class Board
  def initialize
    @squares = {
      'a': { '1': 0, '2': 0, '3': 0, '4': 0, '5': 0, '6': 0, '7': 0, '8': 0 },
      'b': { '1': 0, '2': 0, '3': 0, '4': 0, '5': 0, '6': 0, '7': 0, '8': 0 },
      'c': { '1': 0, '2': 0, '3': 0, '4': 0, '5': 0, '6': 0, '7': 0, '8': 0 },
      'd': { '1': 0, '2': 0, '3': 0, '4': 0, '5': 0, '6': 0, '7': 0, '8': 0 },
      'e': { '1': 0, '2': 0, '3': 0, '4': 0, '5': 0, '6': 0, '7': 0, '8': 0 },
      'f': { '1': 0, '2': 0, '3': 0, '4': 0, '5': 0, '6': 0, '7': 0, '8': 0 },
      'g': { '1': 0, '2': 0, '3': 0, '4': 0, '5': 0, '6': 0, '7': 0, '8': 0 },
      'h': { '1': 0, '2': 0, '3': 0, '4': 0, '5': 0, '6': 0, '7': 0, '8': 0 },
    }
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

  # visualization of the chessboard
  def show_board
    puts('┌───┬───┬───┬───┬───┬───┬───┬───┐')
    7.downto(1) do |row|
      print('│ ')
      @squares.each_value do |column|
        print(column[:"r#{row}"], '  │ ')
      end
      row == 1 ? puts(' ', '└───┴───┴───┴───┴───┴───┴───┴───┘') : puts(' ', '├───┼───┼───┼───┼───┼───┼───┼───┤')
    end
  end
end

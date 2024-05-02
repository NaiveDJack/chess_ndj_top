# frozen_string_literal: true

# module with methods common to all chess pieces
module Pieces
  # creates a piece object according to input
  def create_piece(name, color)
    return unless %w[black white].include?(color)

    piece_name = Pieces.const_get(name.to_s)
    piece_name.new(color)
  end

  # pawn piece features
  class Pawn
    attr_reader :char

    def initialize(color)
      @name = 'pawn'
      @color = color
      @char = '♟︎' if color == 'black'
      @char = '♙' if color == 'white'
      @move_dir = %w[forward]
      @move_dist = 1
      @move_special = %w[diag_cap en_passant promotion]
    end
  end

  # king piece features
  class King
    attr_reader :char

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

  # bishop piece features
  class Bishop
    attr_reader :char

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

  # queen piece features
  class Queen
    attr_reader :char

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

  # king piece features
  class Knight
    attr_reader :char

    def initialize(color)
      @name = 'knight'
      @color = color
      @char = '♞' if color == 'black'
      @char = '♘' if color == 'white'
      @move_dir = %w[knight]
      @move_dist = 1
      @move_special = []
    end
  end

  # rook piece features
  class Rook
    attr_reader :char

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

  # empty square piece features
  class Square
    attr_reader :char

    def initialize(color)
      @name = 'square'
      @color = color
      @char = ' ' if color == 'black'
      @char = ' ' if color == 'white'
    end
  end
end

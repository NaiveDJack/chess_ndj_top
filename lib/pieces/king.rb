# frozen_string_literal: true

# king piece features
class King
  attr_reader :name, :color, :char

  def initialize(name, color)
    @name = name
    @color = color
    @char = '♚' if color == 'black'
    @char = '♔' if color == 'white'
  end
end

# frozen_string_literal: true

require_relative '../lib/game'

describe Game do
  subject(:game) { described_class.new }

  context 'when initiated' do
    it 'sets all pieces in initial position' do # visual test
      board = game.instance_variable_get(:@board)
      board.show_board
    end
    xit 'sets status to white play for first move'
  end
end

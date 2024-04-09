# frozen_string_literal: true

require_relative '../lib/board'

describe Board do
  subject(:board) { described_class.new }

  context 'when initiated' do # visual test
    it 'makes a 8x8 annotated black and white board' do
      board.show_board
    end
  end

  context 'on checking square coordinates' do
    it 'returns the coordinates of a square' do
      expect(board.coord_locator('a1')).to eq(0)
    end
    it 'fails on too long input' do
      expect(board.coord_locator('a21')).to be(nil)
      expect(board.coord_locator('a')).to eq(nil)
    end
  end

  context 'on move command' do
    it 'fails on final position out of bounds'
    it 'fails if a piece declared to be there is missing'
    it 'fails on path occupied'
    it 'fails if piece moved is not of the playing color'

    it 'fails on position occupied by piece of same color'
    it 'captures piece of other color in end position'

    it 'changes status according to the new game state'
  end

  context 'when checking board status' do
    it 'sets check status when appropriate'
    it 'fails if status = check before AND after the move'

    it 'sets checkmate status when appropriate'
    it 'sets stalemate status for lack of moves'
    it 'sets stalemate status for thrice repeated moves'
  end
end

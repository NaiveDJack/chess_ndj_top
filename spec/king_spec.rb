# frozen_string_literal: true

# scaffolding for the Piece module tests

require_relative '../lib/pieces'

describe Pieces::King do
  subject(:piece) { described_class.new('black') }

  context 'when initiated' do
    it '@char stays nil if the color is inappropriate' do
      y_piece = described_class.new('yellow')
      expect(y_piece.char).to be(nil)
    end
  end
end

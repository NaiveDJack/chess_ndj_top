# frozen_string_literal: true

# scaffolding for the Piece module tests

require_relative '../lib/pieces/king'

describe King do
  subject(:piece) { described_class.new('king', 'black') }

  context 'when initiated' do
    it 'sets color' do
      expect(piece.color).to be('black')
    end
    it 'sets name' do
      expect(piece.name).to be('king')
    end
    it 'imports the relevant piece' do
      expect(piece.char).to be('♚')
    end
    it '@char stays nil if the color is inappropriate' do
      y_piece = described_class.new('king', 'yellow')
      expect(y_piece.char).to be(nil)
    end
    it 'imports a move set'
  end

  context 'on move command' do
    it 'fails on move out of moveset'
    it 'succeeds on move within the moveset'
    it 'returns a path to the end position'
  end
end

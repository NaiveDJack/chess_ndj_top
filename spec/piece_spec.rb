# frozen_string_literal: true

require_relative '../lib/piece'

describe Piece do
  subject(:piece) {described_class.new }

  context 'when initiated' do
    it 'sets color'
    it 'makes the right piece'
    it 'imports a move set'
  end

  context 'on move command' do
    it 'fails on move out of moveset'
    it 'succeeds on move within the moveset'
    it 'returns a path to the end position'
  end
end

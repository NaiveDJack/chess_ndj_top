# frozen_string_literal: true

require_relative '../lib/pieces'

describe Pieces do
  include Pieces

  context 'when asked to create a black king' do
    it 'creates a black king' do
      expect(create_piece('King', 'black').char).to be('♚')
    end

    it 'creates a white pawn' do
      expect(create_piece('Pawn', 'white').char).to be('♙')
    end

    it 'creates a black square' do
      expect(create_piece('Square', 'black').char).to be('⬛')
    end

    it 'returns nil if the color is inappropriate' do
      expect(create_piece('King', 'yellow')).to be(nil)
    end

    it 'raises an error if the class does not exist' do
      expect { create_piece('Jester', 'white') }.to raise_error(NameError)
    end
  end
end

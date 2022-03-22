# frozen_string_literal: true


require '../lib/board.rb'
require '../lib/cell.rb'
require '../lib/pieces.rb'
require 'pry'

describe Board do

	subject (:board) {described_class.new}

	before do
		board = Board.new
	end



	describe 'create_white_pieces' do

		it 'creates a hash with 16 game_pieces' do
			result = board.create_white_pieces
			expect(result.size).to be(16)
		end

		xit 'creates 2 rook pieces' do
			result = board.create_white_pieces
			rooks = result.select {|piece| piece.class == Rook}
			expect(rooks.size).to be(2)
		end

		xit 'creates 2 knight pieces' do
			result = board.create_white_pieces
			knights = result.select {|piece| piece.class == Knight}
			expect(knights.size).to be(2)
		end

		xit 'creates 2 bishop pieces' do
			result = board.create_white_pieces
			bishops = result.select {|piece| piece.class == Bishop}
			expect(bishops.size).to be(2)
		end

		xit 'creates 1 Queen' do
			result = board.create_white_pieces
			queens = result.select {|piece| piece.class == Queen}
			expect(queens.size).to be(1)
		end

		xit 'creates 1 King' do
			result = board.create_white_pieces
			kings = result.select {|piece| piece.class == King}
			expect(kings.size).to be(1)
		end

		xit 'creates 8 pawn pieces' do
			result = board.create_white_pieces
			pawn = result.select {|piece| piece.class == Pawn}
			expect(rooks.size).to be(8)
		end
	end
end







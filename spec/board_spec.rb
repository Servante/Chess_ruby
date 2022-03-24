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




	describe '#board_setup' do

		context 'when this script method is called it creates two hashes' do

			it 'each have 16 game_pieces' do
				result = []
				result = board.board_setup
				expect(result.size).to be(16)
			end

			xit 'each have 2 rook pieces' do
				result = board.board_setup
				rooks = result.select {|piece| piece.class == Rook}
				expect(rooks.size).to be(2)
			end

			xit 'each have 2 knight pieces' do
				result = board.board_setup
				knights = result.select {|piece| piece.class == Knight}
				expect(knights.size).to be(2)
			end

			xit 'each have 2 bishop pieces' do
				result = board.board_setup
				bishops = result.select {|piece| piece.class == Bishop}
				expect(bishops.size).to be(2)
			end

			xit 'each have 1 Queen' do
				result = board.board_setup
				queens = result.select {|piece| piece.class == Queen}
				expect(queens.size).to be(1)
			end

			xit 'each have 1 King' do
				result = board.board_setup
				kings = result.select {|piece| piece.class == King}
				expect(kings.size).to be(1)
			end

			xit 'each have 8 pawn pieces' do
				result = board.board_setup
				pawn = result.select {|piece| piece.class == Pawn}
				expect(rooks.size).to be(8)
			end
		end
		context 'and assigns pieces to board' do
			xit '4 rooks' do 
				board.create_white_pieces
				expect(board.cells[8][0].value).to be(Rook)
		 		expect(board.cells[8][7].value).to be(Rook)
		 		expect(board.cells[8][0].value).to be(Rook)
		 		expect(board.cells[8][7].value).to be(Rook)
		 	end

		 	xit '4 bishops' do
		 		board.create_white_pieces
		 		expect(board.cells[8][2].value).to be(Bishop)
		 		expect(board.cells[8][5].value).to be(Bishop)
		 		expect(board.cells[8][2].value).to be(Bishop)
		 		expect(board.cells[8][5].value).to be(Bishop)
	 		end

	 		xit '4 knights' do
		 		board.create_white_pieces
		 		expect(board.cells[8][2].value).to be(Bishop)
		 		expect(board.cells[8][5].value).to be(Bishop)
		 		expect(board.cells[8][2].value).to be(Bishop)
		 		expect(board.cells[8][5].value).to be(Bishop)
	 		end

	 		xit '2 queens' do
		 		board.create_white_pieces
		 		expect(board.cells[8][2].value).to be(Bishop)
		 		expect(board.cells[8][5].value).to be(Bishop)
		 	end

		 	xit '2 kings' do
		 		board.create_white_pieces
		 		expect(board.cells[8][2].value).to be(Bishop)
		 		expect(board.cells[8][5].value).to be(Bishop)
		 	end

		 	xit '16 pawns' do
		 		board.create_white_pieces
		 		expect(board.cells[8][2].value).to be(Bishop)
		 		expect(board.cells[8][5].value).to be(Bishop)
		 		expect(board.cells[8][2].value).to be(Bishop)
		 		expect(board.cells[8][5].value).to be(Bishop)
		 		expect(board.cells[8][2].value).to be(Bishop)
		 		expect(board.cells[8][5].value).to be(Bishop)
		 		expect(board.cells[8][2].value).to be(Bishop)
		 		expect(board.cells[8][5].value).to be(Bishop)
		 		expect(board.cells[8][2].value).to be(Bishop)
		 		expect(board.cells[8][5].value).to be(Bishop)
		 		expect(board.cells[8][2].value).to be(Bishop)
		 		expect(board.cells[8][5].value).to be(Bishop)
		 		expect(board.cells[8][2].value).to be(Bishop)
		 		expect(board.cells[8][5].value).to be(Bishop)
		 		expect(board.cells[8][2].value).to be(Bishop)
		 		expect(board.cells[8][5].value).to be(Bishop)
		 	end
		end
	end
end








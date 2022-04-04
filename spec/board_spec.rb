# frozen_string_literal: true


require '../lib/board.rb'
require '../lib/cell.rb'
require '../lib/pieces.rb'
require 'pry'

describe Board do

	subject (:board) {described_class.new}


	# describe '#create_white_rooks' do

	# 	it 'returns an array with two rooks named white_rook1 and white_rook2' do
	# 		results = board.create_white_rooks
	# 		expect(results.class).to be (Array)
	# 		# binding.pry
	# 		expect(results[0].name).to eq("white_rook1")
	# 		expect(results[1].name).to eq("white_rook2")
	# 	end

	# 	it 'assigns both rooks to the board' do
	# 		board.create_white_rooks
	# 		expect(board.cells[8][0].value.class).to be(Rook)
	# 		expect(board.cells[8][0].value.class).to be(Rook)
	# 	end
	# end

	describe '#initialize' do

		it 'creates a new instance of Board' do
			board = Board.new
			expect(board.class).to be(Board)
		end
	end

	describe '#create_white_pieces' do
                                                                                                                                     

		it 'returns a hash' do
			game_pieces = board.create_white_pieces
			expect(game_pieces.class).to be(Hash)
		end

		it 'includes 8 pawns' do
			game_pieces = board.create_white_pieces
			expect(game_pieces[:pawns].size).to eq(8)
		end

		it 'includes 2 rooks' do
			game_pieces = board.create_white_pieces
			expect(game_pieces[:rooks].size).to eq(2)
		end

		it 'includes 2 knights' do
			game_pieces = board.create_white_pieces
			expect(game_pieces[:knights].size).to eq(2)
		end

		it 'includes 2 bishops' do
			game_pieces = board.create_white_pieces
			expect(game_pieces[:bishops].size).to eq(2)
		end

		it 'includes 1 queen' do
			game_pieces = board.create_white_pieces
			# binding.pry
			expect(game_pieces[:queen].size).to eq(1)
		end

		it 'includes 1 king' do
			game_pieces = board.create_white_pieces
			expect(game_pieces[:king].size).to eq(1)
		end
	end


	describe '#create_black_pieces' do
                                                                                                                                     

		it 'returns a hash' do
			game_pieces = board.create_black_pieces
			expect(game_pieces.class).to be(Hash)
		end

		it 'includes 8 pawns' do
			game_pieces = board.create_black_pieces
			expect(game_pieces[:pawns].size).to eq(8)
		end

		it 'includes 2 rooks' do
			game_pieces = board.create_black_pieces
			expect(game_pieces[:rooks].size).to eq(2)
		end

		it 'includes 2 knights' do
			game_pieces = board.create_black_pieces
			expect(game_pieces[:knights].size).to eq(2)
		end

		it 'includes 2 bishops' do
			game_pieces = board.create_black_pieces
			expect(game_pieces[:bishops].size).to eq(2)
		end

		it 'includes 1 queen' do
			game_pieces = board.create_black_pieces
			# binding.pry
			expect(game_pieces[:queen].size).to eq(1)
		end

		it 'includes 1 king' do
			game_pieces = board.create_black_pieces
			expect(game_pieces[:king].size).to eq(1)
		end
	end
end


			



# 	describe '#board_setup' do

# 		context 'when this script method is called it creates two hashes' do

# 			xit 'each have 16 game_pieces' do
# 				result = []
# 				result = board.board_setup
# 				expect(result.size).to be(16)
# 			end

# 			xit 'each have 2 rook pieces' do
# 				result = board.board_setup
# 				rooks = result.select {|piece| piece.class == Rook}
# 				expect(rooks.size).to be(2)
# 			end

# 			xit 'each have 2 knight pieces' do
# 				result = board.board_setup
# 				knights = result.select {|piece| piece.class == Knight}
# 				expect(knights.size).to be(2)
# 			end

# 			xit 'each have 2 bishop pieces' do
# 				result = board.board_setup
# 				bishops = result.select {|piece| piece.class == Bishop}
# 				expect(bishops.size).to be(2)
# 			end

# 			xit 'each have 1 Queen' do
# 				result = board.board_setup
# 				queens = result.select {|piece| piece.class == Queen}
# 				expect(queens.size).to be(1)
# 			end

# 			xit 'each have 1 King' do
# 				result = board.board_setup
# 				kings = result.select {|piece| piece.class == King}
# 				expect(kings.size).to be(1)
# 			end

# 			xit 'each have 8 pawn pieces' do
# 				result = board.board_setup
# 				pawn = result.select {|piece| piece.class == Pawn}
# 				expect(rooks.size).to be(8)
# 			end
# 		end
		
# 		context 'and assigns pieces to board' do
# 			xit '4 rooks' do 
# 				board.create_white_pieces
# 				expect(board.cells[8][0].value).to be(Rook)
# 		 		expect(board.cells[8][7].value).to be(Rook)
# 		 		expect(board.cells[8][0].value).to be(Rook)
# 		 		expect(board.cells[8][7].value).to be(Rook)
# 		 	end

# 		 	xit '4 bishops' do
# 		 		board.create_white_pieces
# 		 		expect(board.cells[8][2].value).to be(Bishop)
# 		 		expect(board.cells[8][5].value).to be(Bishop)
# 		 		expect(board.cells[8][2].value).to be(Bishop)
# 		 		expect(board.cells[8][5].value).to be(Bishop)
# 	 		end

# 	 		xit '4 knights' do
# 		 		board.create_white_pieces
# 		 		expect(board.cells[8][2].value).to be(Bishop)
# 		 		expect(board.cells[8][5].value).to be(Bishop)
# 		 		expect(board.cells[8][2].value).to be(Bishop)
# 		 		expect(board.cells[8][5].value).to be(Bishop)
# 	 		end

# 	 		xit '2 queens' do
# 		 		board.create_white_pieces
# 		 		expect(board.cells[8][2].value).to be(Bishop)
# 		 		expect(board.cells[8][5].value).to be(Bishop)
# 		 	end

# 		 	xit '2 kings' do
# 		 		board.create_white_pieces
# 		 		expect(board.cells[8][2].value).to be(Bishop)
# 		 		expect(board.cells[8][5].value).to be(Bishop)
# 		 	end

# 		 	xit '16 pawns' do
# 		 		board.create_white_pieces
# 		 		expect(board.cells[8][2].value).to be(Bishop)
# 		 		expect(board.cells[8][5].value).to be(Bishop)
# 		 		expect(board.cells[8][2].value).to be(Bishop)
# 		 		expect(board.cells[8][5].value).to be(Bishop)
# 		 		expect(board.cells[8][2].value).to be(Bishop)
# 		 		expect(board.cells[8][5].value).to be(Bishop)
# 		 		expect(board.cells[8][2].value).to be(Bishop)
# 		 		expect(board.cells[8][5].value).to be(Bishop)
# 		 		expect(board.cells[8][2].value).to be(Bishop)
# 		 		expect(board.cells[8][5].value).to be(Bishop)
# 		 		expect(board.cells[8][2].value).to be(Bishop)
# 		 		expect(board.cells[8][5].value).to be(Bishop)
# 		 		expect(board.cells[8][2].value).to be(Bishop)
# 		 		expect(board.cells[8][5].value).to be(Bishop)
# 		 		expect(board.cells[8][2].value).to be(Bishop)
# 		 		expect(board.cells[8][5].value).to be(Bishop)
# 		 	end
# 		end
# 	end









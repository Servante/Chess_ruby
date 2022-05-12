#frozen_string_literal: true

require '../lib/game.rb'
require '../lib/board.rb'
require '../lib/cell.rb'
require '../lib/player.rb'
require '../lib/display.rb'
require '../lib/pieces.rb'
# require 'pry'


describe Game_piece do

	describe "#get_moves" do 

		context "when game_piece is a pawn and location is [0,0]" do

			it "returns [0,1]" do
				pawn = Pawn.new([0,0], :pawn1, "t")
				result = pawn.get_moves
				expect(result).to eq([[0,1]])
			end
		end

		context "when game_piece is a rook and has a location of [3,2]" do

			it "returns an array which includes [3,3]" do
				rook = Rook.new([3,2], :rook1, "r")
				result = rook.get_moves
				expect(result).to be_an Array
				expect(result).to include([3,3])
			end
		end
	end

	describe "#go_north" do

		subject(:board) {Board.new}
		let (:rook) {Rook.new([4,3], :rook1, "r")}
		let (:pawn) {Pawn.new([2,3], :pawn1, "p")}
	
		context "when path to target is not blocked" do

			before do
				board.cells[4][3].value = rook
			end

			it "returns true" do
				board_cells = board.cells
				target = [1,3]
				location = rook.location
				expect(rook.go_north(board_cells, location, target)).to be true
			end
		end

		context "when path to target is blocked" do

			before do
				board.cells[4][3].value = rook
				board.cells[2][3].value = pawn
			end

			it "returns false" do
				board_cells = board.cells
				target = [1,3]
				location = rook.location
				expect(rook.go_north(board_cells, location, target)).to be false
			end
		end
	end


	describe "#go_south" do

		subject(:board) {Board.new}
		let (:rook) {Rook.new([4,3], :rook1, "r")}
		let (:pawn) {Pawn.new([7,3], :pawn1, "p")}
	
		context "when path to target is not blocked" do

			before do
				board.cells[4][3].value = rook
			end

			it "returns true" do
				board_cells = board.cells
				target = [8,3]
				location = rook.location
				expect(rook.go_south(board_cells, location, target)).to be true
			end
		end

		context "when path to target is blocked" do

			before do
				board.cells[4][3].value = rook
				board.cells[7][3].value = pawn
			end

			it "returns false" do
				board_cells = board.cells
				target = [8,3]
				location = rook.location
				expect(rook.go_south(board_cells, location, target)).to be false
			end
		end
	end

	describe "#go_east" do

		subject(:board) {Board.new}
		let (:rook) {Rook.new([4,3], :rook1, "r")}
		let (:pawn) {Pawn.new([4,6], :pawn1, "p")}
	
		context "when path to target is not blocked" do

			before do
				board.cells[4][3].value = rook
			end

			it "returns true" do
				board_cells = board.cells
				target = [4,7]
				location = rook.location
				expect(rook.go_east(board_cells, location, target)).to be true
			end
		end

		context "when path to target is blocked" do

			before do
				board.cells[4][3].value = rook
				board.cells[4][6].value = pawn
			end

			it "returns false" do
				board_cells = board.cells
				target = [4,7]
				location = rook.location
				expect(rook.go_east(board_cells, location, target)).to be false
			end
		end
	end	

	describe "#go_west" do

		subject(:board) {Board.new}
		let (:rook) {Rook.new([4,3], :rook1, "r")}
		let (:pawn) {Pawn.new([4,1], :pawn1, "p")}
	
		context "when path to target is not blocked" do

			before do
				board.cells[4][3].value = rook
			end

			it "returns true" do
				board_cells = board.cells
				target = [4,0]
				location = rook.location
				expect(rook.go_west(board_cells, location, target)).to be true
			end
		end

		context "when path to target is blocked" do

			before do
				board.cells[4][3].value = rook
				board.cells[4][1].value = pawn
			end

			it "returns false" do
				board_cells = board.cells
				target = [4,0]
				location = rook.location
				expect(rook.go_west(board_cells, location, target)).to be false
			end
		end
	end

	describe "#go_northeast" do

		subject(:board) {Board.new}
		let (:bishop) {Bishop.new([4,3], :bishop1, "b")}
		let (:pawn) {Pawn.new([3,4], :pawn1, "p")}
	
		context "when path to target is not blocked" do

			before do
				board.cells[4][3].value = bishop
			end

			it "returns true" do
				board_cells = board.cells
				target = [2,5]
				location = bishop.location
				expect(bishop.go_northeast(board_cells, location, target)).to be true
			end
		end

		context "when path to target is blocked" do

			before do
				board.cells[4][3].value = bishop
				board.cells[3][4].value = pawn
			end

			it "returns false" do
				board_cells = board.cells
				target = [2,5]
				location = bishop.location
				expect(bishop.go_northeast(board_cells, location, target)).to be false
			end
		end
	end

	describe "#go_northwest" do

		subject(:board) {Board.new}
		let (:bishop) {Bishop.new([4,3], :bishop1, "b")}
		let (:pawn) {Pawn.new([3,2], :pawn1, "p")}
	
		context "when path to target is not blocked" do

			before do
				board.cells[4][3].value = bishop
			end

			it "returns true" do
				board_cells = board.cells
				target = [2,1]
				location = bishop.location
				expect(bishop.go_northwest(board_cells, location, target)).to be true
			end
		end

		context "when path to target is blocked" do

			before do
				board.cells[4][3].value = bishop
				board.cells[3][2].value = pawn
			end

			it "returns false" do
				board_cells = board.cells
				target = [2,1]
				location = bishop.location
				expect(bishop.go_northwest(board_cells, location, target)).to be false
			end
		end
	end	

	describe "#go_southeast" do

		subject(:board) {Board.new}
		let (:bishop) {Bishop.new([4,3], :bishop1, "b")}
		let (:pawn) {Pawn.new([6,5], :pawn1, "p")}
	
		context "when path to target is not blocked" do

			before do
				board.cells[4][3].value = bishop
			end

			it "returns true" do
				board_cells = board.cells
				target = [7,6]
				location = bishop.location
				expect(bishop.go_southeast(board_cells, location, target)).to be true
			end
		end

		context "when path to target is blocked" do

			before do
				board.cells[4][3].value = bishop
				board.cells[6][5].value = pawn
			end

			it "returns false" do
				board_cells = board.cells
				target = [7,6]
				location = bishop.location
				expect(bishop.go_southeast(board_cells, location, target)).to be false
			end
		end
	end	

	describe "#go_southwest" do

		subject(:board) {Board.new}
		let (:bishop) {Bishop.new([4,3], :bishop1, "b")}
		let (:pawn) {Pawn.new([5,2], :pawn1, "p")}
	
		context "when path to target is not blocked" do

			before do
				board.cells[4][3].value = bishop
			end

			it "returns true" do
				board_cells = board.cells
				target = [6,1]
				location = bishop.location
				expect(bishop.go_southwest(board_cells, location, target)).to be true
			end
		end

		context "when path to target is blocked" do

			before do
				board.cells[4][3].value = bishop
				board.cells[5][2].value = pawn
			end

			it "returns false" do
				board_cells = board.cells
				target = [6,1]
				location = bishop.location
				expect(bishop.go_southwest(board_cells, location, target)).to be false
			end
		end
	end													
end



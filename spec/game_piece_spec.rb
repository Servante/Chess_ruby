# frozen_string_literal: true

require '../lib/game.rb'
require '../lib/board.rb'
require '../lib/cell.rb'
require '../lib/player.rb'
require '../lib/display.rb'
require '../lib/pieces.rb'
require 'pry'


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
		
		context "when path to target is not blocked" do

			it "returns true" do

			end
		end

		context "when path to target is blocked" do

			it "returns false" do

			end

		end
	end		
end



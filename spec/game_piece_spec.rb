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
	end
end



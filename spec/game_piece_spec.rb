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

			it "returns [1,0]" do
				pawn = Pawn.new
				result = pawn.get_moves([0,0])
				expect(result).to eq([[1,0]])
			end
		end
	end
end



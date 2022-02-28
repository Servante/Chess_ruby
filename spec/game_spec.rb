# frozen_string_literal: true

require '../lib/game.rb'
require '../lib/board.rb'
require '../lib/cell.rb'
require '../lib/player.rb'
require '../lib/display.rb'
require '../lib/pieces.rb'


describe Game do

	subject(:game) {described_class.new}

	describe "#player_creation" do

		before do 
			player1 = "wes"
			player2 = "bria"
			allow(game).to receive(:puts)
			allow(game).to receive(:gets).and_return(player1, player2)
		end

		





end
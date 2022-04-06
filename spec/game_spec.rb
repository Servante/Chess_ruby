# frozen_string_literal: true

require '../lib/game.rb'
require '../lib/board.rb'
require '../lib/cell.rb'
require '../lib/player.rb'
require '../lib/display.rb'
require '../lib/pieces.rb'
require 'pry'


describe Game do

	subject(:game) {described_class.new}

	describe "#player_creation" do

		before do 
			player1 = "wes"
			player2 = "bria"
			allow(game).to receive(:puts)
			allow(game).to receive(:gets).and_return(player1, player2)
		end

		context "when calling player creation for the first time" do
			it "creates a new player with white as the side" do 
				game.player_creation
				expect(game.player1.side).to be("white")
			end

			it "sets @current_player as player1" do
				game.player_creation
				expect(game.current_player).to be(game.player1)
			end

			it "returns the newly generated player" do
				returned = game.player_creation
				expect(returned.class).to eq(Player)
			end
		end

		context "when calling player creation for player 2" do

			before do 				
				player1 = game.player_creation
				game.instance_variable_set(:@player1, player1)
			end

			it "creates a new player with black as the side" do
				player2 = game.player_creation
				game.instance_variable_set(:@player2, player2)
				expect(game.player2.side).to eq("black")
			end

			it "does not set itself as @current_player" do
				player2 = game.player_creation
				game.instance_variable_set(:@player2, player2)
				expect(game.current_player).not_to be(player2)
			end
		end
	end

	describe '#assign_pieces' do

		before do 
			player1 = "wes"
			player2 = "bria"
			allow(game).to receive(:puts)
			allow(game).to receive(:gets).and_return(player1, player2)
			player1 = game.player_creation
			game.instance_variable_set(:@player1, player1)
			player2 = game.player_creation
			game.instance_variable_set(:@player2, player2)
		end

		it 'assigns the white_pieces_hash to player1' do
			game.assign_pieces
			expect(game.player1.pieces).to be(game.board.white_pieces)
		end

		it 'assigns the black_pieces_hash to player2' do
			game.assign_pieces
			expect(game.player1.pieces).to be(game.board.white_pieces)
		end
	end	
end
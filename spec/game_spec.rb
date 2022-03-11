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

	describe "#create_white_rooks" do

		let(:player) {Player.new("wes", "white")}

		before do
			board = Board.new
			game.instance_variable_set(:@board, board)
			game.instance_variable_set(:@player1, player)
		end

		context "when create_white_rooks is called" do

			it "adds two key/value pairs to the player's pieces hash" do
				game.create_white_rooks(player)
				expect(player.pieces.size).to be(2)
			end

			it "gives the key symbol consisting of the side, piece, and piece number" do
				game.create_white_rooks(player)
				expect(player.pieces.has_key?(:white_rook1)).to be true
			end

			it "assigns a rook to board.cells[8][0]" do
				game.create_white_rooks(player)
				expect(game.board.cells[8][0].value.class).to be(Rook)
			end

			it "assigns a rook to board.cells[8][7]" do
				game.create_white_rooks(player)
				expect(game.board.cells[8][7].value.class).to be(Rook)
			end

			it "assigns its board location to an instance variable" do
				game.create_white_rooks(player)
				rook = game.player1.pieces[:white_rook1]
				expect(rook.location).to be(game.board.cells[8][0])
			end
		end
	end
end
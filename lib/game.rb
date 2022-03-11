# frozen_string_literal: true
require_relative 'display.rb'

class Game
	include Display
	attr_accessor :player1, :player2, :current_player, :board

	def initalize 
		@player1 = nil
		@player2 = nil
		@current_player = nil
		@board = Board.new
	end

	def player_creation
		player_number = player1.nil? ? 1 : 2
		display_new_player(player_number)
		name = gets.chomp
		side = player_number == 1 ? "white" : "black"
		player = Player.new(name, side)
		@current_player == nil ? @player1 = player : @player2 == player
		@current_player = player if @current_player.nil?
		return player
	end

	def create_white_rooks(player)
		piece = "rook"
		array = [1,2]
		side = "white"
		board_locations = [@board.cells[8][0], @board.cells[8][7]]
		array.each do |num|
			board = (board_locations.shift)
			g_piece = player.pieces[(side + "_" + piece + (num.to_s)).to_sym] = Rook.new(board)
			board.value = g_piece
		end
	end


	private

	def game_setup
		display_introduction
		@player1 = player_creation
		@player2 = player_creation
	end

end




# frozen_string_literal: true
require_relative 'display.rb'

class Game
	include Display
	attr_accessor :player1, :player2, :current_player, :board

	def initialize 
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

	def assign_pieces
		player1.pieces = board.white_pieces
		player2.pieces = board.black_pieces
	end


	private

	def game_setup
		display_introduction
		@player1 = player_creation
		@player2 = player_creation
		assign_pieces
	end	



end




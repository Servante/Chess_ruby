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
		@current_player = player if @current_player.nil?
		return player
	end

	private

	def game_setup
		display_introduction
		@player1 = player_creation
		@player2 = player_creation
	end

end




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

	private

	def game_setup
		display_introduction
		@player1 = player_creation
		@player2 = player_creation
	end

end




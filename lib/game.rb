# frozen_string_literal: true

class Game
	attr_accessor :player1, :player2, :current_player, :board

	def initalize 
		@player1 = nil
		@player2 = nil
		@current_player = nil
		@board = Board.new
	end

	
# frozen_string_literal: true

class Pawn
	attr_accessor :token, :squares_threatened, :moves_list
	def initialize
		@token = token
		@moves_list = moves_list
		@possible_moves = possible_moves
		@squares_threatened = squares_threatened
	end

	

end

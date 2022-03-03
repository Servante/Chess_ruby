# frozen_string_literal: true

class Game_piece

	def get_moves(base_moves, location, result=[])
		base_moves.each do |move|
			x = location[0] + move[0]
			y = location[1] + move[1]
			result << [x, y] if x.between?(0,7) && y.between?(0,7)
		end
		return result
	end
end



class Pawn < Game_piece
	attr_accessor :token, :squares_threatened, :moves_list, :base_moves
	def initialize
		@token = nil
		@moves_list = nil
		@possible_moves = nil
		@squares_threatened = nil
		@base_moves = [1,0]
	end


end

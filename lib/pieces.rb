# frozen_string_literal: true

require 'pry'

class Game_piece

	attr_accessor :token, :squares_threatened, :moves_list, :base_moves


	def get_moves(location, result=[])
		@base_moves.each do |move|
			# binding.pry
			x = location[0] + move[0]
			y = location[1] + move[1]
			result << [x, y] if x.between?(0,7) && y.between?(0,7)
		end
		return result
	end
end

class Pawn < Game_piece
	def initialize
		@token = nil
		@base_moves = [[1,0]]
		@moves_list = nil
		@possible_moves = nil
		@squares_threatened = nil
	end
end

class Rook < Game_piece
	def initialize
		@token = nil
		@moves_list = nil
		@possible_moves = nil
		@squares_threatened = nil
		@base_moves = [[1,0]]
	end
end

class Knight < Game_piece
	def initialize
		@token = nil
		@moves_list = nil
		@possible_moves = nil
		@squares_threatened = nil
		@base_moves = [[1,0]]
	end
end

class Bishop < Game_piece
	def initialize
		@token = nil
		@moves_list = nil
		@possible_moves = nil
		@squares_threatened = nil
		@base_moves = [[1,0]]
	end
end

class King < Game_piece
	def initialize
		@token = nil
		@moves_list = nil
		@possible_moves = nil
		@squares_threatened = nil
		@base_moves = [[1,0]]
	end
end

class Queen < Game_piece
	def initialize
		@token = nil
		@moves_list = nil
		@possible_moves = nil
		@squares_threatened = nil
		@base_moves = [[1,0]]
	end
end

# frozen_string_literal: true

require 'pry'

class Game_piece

	attr_accessor :location, :token, :base_moves, :moves_list, :squares_threatened, :value 

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
		@location = nil
		@token = nil
		@base_moves = [[0,1]]
		@moves_list = nil
		@possible_moves = nil
		@squares_threatened = nil
		@value = 1
	end
end

class Rook < Game_piece
	def initialize(location)
		@location = location
		@token = nil		
		@moves_list = nil
		@possible_moves = nil
		@squares_threatened = nil
		@base_moves = [[0,1], [0,2],[0,3],[0,4],[0,5],[0,6],[0,7],[0,-1],[0,-2],[0,-3],[0,-4],[0,-5],[0,-6],[0,-7],[-1,0], [-2,0],[-3,0],[-4,0],[-5,0],[-6,0],[-7,0],[1,0],[2,0],[3,0],[4,0],[5,0],[6,0],[7,0]]
	  @value = 5
	end
end

class Knight < Game_piece
	def initialize
		@location = nil
		@token = nil
		@moves_list = nil
		@possible_moves = nil
		@squares_threatened = nil
		@base_moves = [[1,0]]
		@value = 3
	end
end

class Bishop < Game_piece
	def initialize
		@location = nil
		@token = nil
		@moves_list = nil
		@possible_moves = nil
		@squares_threatened = nil
		@base_moves = [[1,0]]
		@value = 3
	end
end

class King < Game_piece
	def initialize
		@location = nil
		@token = nil
		@moves_list = nil
		@possible_moves = nil
		@squares_threatened = nil
		@base_moves = [[1,0]]
		@value = nil
	end
end

class Queen < Game_piece
	def initialize
		@location = nil
		@token = nil
		@moves_list = nil
		@possible_moves = nil
		@squares_threatened = nil
		@base_moves = [[1,0]]
		@value = 9
	end
end

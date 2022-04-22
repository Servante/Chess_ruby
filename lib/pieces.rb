# frozen_string_literal: true

require 'pry'

class Game_piece

	attr_accessor :name, :location, :token, :base_moves, :possible_moves, :squares_threatened, :value, :first_move 

	def get_moves(result=[])
		@base_moves.each do |move|
			# binding.pry
			x = @location[0] + move[0]
			y = @location[1] + move[1]
			result << [x, y] if x.between?(0,7) && y.between?(0,7)
		end
		return result
	end
end

class Pawn < Game_piece
	def initialize(location, name, token)
		@location = location
		@name = name
		@token = token
		@base_moves = [[0,1]]
		@possible_moves = nil
		@squares_threatened = nil
		@value = 1
		@first_move = true
	end
end

class Rook < Game_piece
	def initialize(location, name, token)
		@location = location
		@name = name
		@token = token
		@possible_moves = nil
		@squares_threatened = nil
		@base_moves = [[0,1], [0,2],[0,3],[0,4],[0,5],[0,6],[0,7],[0,-1],[0,-2],[0,-3],[0,-4],[0,-5],[0,-6],[0,-7],[-1,0], [-2,0],[-3,0],[-4,0],[-5,0],[-6,0],[-7,0],[1,0],[2,0],[3,0],[4,0],[5,0],[6,0],[7,0]]
	  @value = 5
	end
end

class Knight < Game_piece
	def initialize(location, name, token)
		@location = location
		@name = name
		@token = token
		@possible_moves = nil
		@squares_threatened = nil
		@base_moves = [[1,2],[-1,2],[-2,1],[-2,-1],[2,1],[2,-1],[-1,-2],[1,-2]]
		@value = 3
	end
end

class Bishop < Game_piece
	def initialize(location, name, token)
		@location = location
		@name = name
		@token = token
		@possible_moves = nil
		@squares_threatened = nil
		@base_moves = [[1,1],[2,2],[3,3],[4,4],[5,5],[6,6],[7,7],[-1,-1],[-2,-2],[-3,-3],[-4,-4],[-5,-5],[-6,-6],[-7,-7],[-1,1],[-2,2],[-3,3],[-4,4],[-5,5],[-6,6],[-7,7],[1,-1],[2,-2],[3,-3],[4,-4],[5,-5],[6,-6],[7,-7]]
		@value = 3
	end
end

class King < Game_piece
	def initialize(location, name, token)
		@location = location
		@name = name
		@token = token
		@possible_moves = nil
		@squares_threatened = nil
		@base_moves = [[1,1],[1,0],[1,-1],[0,-1],[-1,-1],[-1,0],[-1,-1],[-1,0],[-1,1]]
		@value = nil
	end
end

class Queen < Game_piece
	def initialize(location, name, token)
		@location = location
		@name = name
		@token = token
		@possible_moves = nil
		@squares_threatened = nil
		@base_moves = [[1,1],[2,2],[3,3],[4,4],[5,5],[6,6],[7,7],[-1,-1],[-2,-2],[-3,-3],[-4,-4],[-5,-5],[-6,-6],[-7,-7],[-1,1],[-2,2],[-3,3],[-4,4],[-5,5],[-6,6],[-7,7],[1,-1],[2,-2],[3,-3],[4,-4],[5,-5],[6,-6],[7,-7],[0,1],[0,2],[0,3],[0,4],[0,5],[0,6],[0,7],[0,-1],[0,-2],[0,-3],[0,-4],[0,-5],[0,-6],[0,-7],[-1,0], [-2,0],[-3,0],[-4,0],[-5,0],[-6,0],[-7,0],[1,0],[2,0],[3,0],[4,0],[5,0],[6,0],[7,0]]
		@value = 9
	end
end

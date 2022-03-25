# frozen_string_literal: true

require_relative 'cell.rb'
require 'pry'


def reload
	load 'lib/board.rb'
end


class Board
	attr_accessor :cells, :white_pieces, :black_pieces

	def initialize
		# binding.pry
		@cells = create_board
		@white_pieces = create_white_pieces
		@black_pieces = Hash.new
	end

	def show(color)

		if color == "white"

			puts <<-HEREDOC

		
		  +----+----+----+----+----+----+----+----+
		8 | #{cells[1][0].value}  |  #{cells[1][1].value} |  #{cells[1][2].value} |  #{cells[1][3].value} |  #{cells[1][4].value} |  #{cells[1][5].value} |  #{cells[1][6].value} | #{cells[1][7].value}  | 
		  +----+----+----+----+----+----+----+----+
		7 |  #{cells[2][0].value} |  #{cells[2][1].value} |  #{cells[2][2].value} |  #{cells[2][3].value} |  #{cells[2][4].value} |  #{cells[2][5].value} |  #{cells[2][6].value} | #{cells[2][7].value}  |
		  +----+----+----+----+----+----+----+----+
		6 |  #{cells[3][0].value} |  #{cells[3][1].value} |  #{cells[3][2].value} |  #{cells[3][3].value} |  #{cells[3][4].value} |  #{cells[3][5].value} |  #{cells[3][6].value} | #{cells[3][7].value}  |
		  +----+----+----+----+----+----+----+----+
		5 |  #{cells[4][0].value} |  #{cells[4][1].value} |  #{cells[4][2].value} |  #{cells[4][3].value} |  #{cells[4][4].value} |  #{cells[4][5].value} |  #{cells[4][6].value} | #{cells[4][7].value}  |
		  +----+----+----+----+----+----+----+----+
		4 |  #{cells[5][0].value} |  #{cells[5][1].value} |  #{cells[5][2].value} |  #{cells[5][3].value} |  #{cells[5][4].value} |  #{cells[5][5].value} |  #{cells[5][6].value} | #{cells[5][7].value}  |
		  +----+----+----+----+----+----+----+----+
		3 |  #{cells[6][0].value} |  #{cells[6][1].value} |  #{cells[6][2].value} |  #{cells[6][3].value} |  #{cells[6][4].value} |  #{cells[6][5].value} |  #{cells[6][6].value} | #{cells[6][7].value}  |
		  +----+----+----+----+----+----+----+----+
		2 |  #{cells[7][0].value} |  #{cells[7][1].value} |  #{cells[7][2].value} |  #{cells[7][3].value} |  #{cells[7][4].value} |  #{cells[7][5].value} |  #{cells[7][6].value} | #{cells[7][7].value}  |
		  +----+----+----+----+----+----+----+----+
		1 |  #{cells[8][0].value} |  #{cells[8][1].value} |  #{cells[8][2].value} |  #{cells[8][3].value} |  #{cells[8][4].value} |  #{cells[8][5].value} |  #{cells[8][6].value} | #{cells[8][7].value}  |
		  +----+----+----+----+----+----+----+----+
		  | A  |  B |  C |  D |  D |  F |  G |  H |

		  HEREDOC

	  else
	  	puts <<-HEREDOC

		
		  +----+----+----+----+----+----+----+----+
		8 | #{cells[8][7].value}  |  #{cells[8][6].value} |  #{cells[8][5].value} |  #{cells[8][4].value} |  #{cells[8][3].value} |  #{cells[8][2].value} |  #{cells[8][1].value} | #{cells[8][0].value}  | 
		  +----+----+----+----+----+----+----+----+
		7 | #{cells[7][7].value}  |  #{cells[7][6].value} |  #{cells[7][5].value} |  #{cells[7][4].value} |  #{cells[7][3].value} |  #{cells[7][2].value} |  #{cells[7][1].value} | #{cells[7][0].value}  |
		  +----+----+----+----+----+----+----+----+
		6 | #{cells[6][7].value}  |  #{cells[6][6].value} |  #{cells[6][5].value} |  #{cells[6][4].value} |  #{cells[6][3].value} |  #{cells[6][2].value} |  #{cells[6][1].value} | #{cells[6][0].value}  |
		  +----+----+----+----+----+----+----+----+
		5 | #{cells[5][7].value}  |  #{cells[5][6].value} |  #{cells[5][5].value} |  #{cells[5][4].value} |  #{cells[5][3].value} |  #{cells[5][2].value} |  #{cells[5][1].value} | #{cells[5][0].value}  |
		  +----+----+----+----+----+----+----+----+
		4 | #{cells[4][7].value}  |  #{cells[4][6].value} |  #{cells[4][5].value} |  #{cells[4][4].value} |  #{cells[4][3].value} |  #{cells[4][2].value} |  #{cells[4][1].value} | #{cells[4][0].value}  |
		  +----+----+----+----+----+----+----+----+
		3 | #{cells[3][7].value}  |  #{cells[3][6].value} |  #{cells[3][5].value} |  #{cells[3][4].value} |  #{cells[3][3].value} |  #{cells[3][2].value} |  #{cells[3][1].value} | #{cells[3][0].value}  |
		  +----+----+----+----+----+----+----+----+
		2 | #{cells[2][7].value}  |  #{cells[2][6].value} |  #{cells[2][5].value} |  #{cells[2][4].value} |  #{cells[2][3].value} |  #{cells[2][2].value} |  #{cells[2][1].value} | #{cells[2][0].value}  |
		  +----+----+----+----+----+----+----+----+
		1 | #{cells[1][7].value}  |  #{cells[1][6].value} |  #{cells[1][5].value} |  #{cells[1][4].value} |  #{cells[1][3].value} |  #{cells[1][2].value} |  #{cells[1][1].value} | #{cells[1][0].value}  |
		  +----+----+----+----+----+----+----+----+
		  | H  |  G |  F |  E |  D |  C |  B |  A |

		  HEREDOC
		end
	end


	def create_board
		hash = Hash.new
		counter = 1
		counter2 = 1
		(8).times do
			array = []
			(8).times do
				new_cell = Cell.new
				array << new_cell
			end
			counter_s = counter.to_i
			hash[counter_s] = array
			counter += 1
		end
		return hash
	end

	def board_setup
		create_white_pieces
		create_black_pieces
		#assign_pieces
	end


	def create_white_pieces
		game_bag = {
		:pawns => create_white_pawns,
		:rooks => create_white_rooks,
		:knights => create_white_knights,
		:bishops => create_white_bishops,
		:queen => create_white_queen,
		:king => create_white_king}
		return game_bag
	end

	def create_black_pieces
		game_bag = {
		:pawns => create_black_pawns,
		:rooks => create_black_rooks,
		:knights => create_black_knights,
		:bishops => create_black_bishops,
		:queen => create_black_queen,
		:king => create_black_king}
		return game_bag
	end


	
	private


	def create_cell(counter) #redundant code
		if counter == 6
			new_cell = Cell.new(" ", true)
		elsif
			new_cell = Cell.new
		end
		return new_cell
	end

	def assign_to_board(g_piece, location)
		# binding.pry
		@cells[location[0]][location[1]].value = g_piece
	end

	def set_name(side, piece, *num)
		name = (side + "_" + piece + (num.to_s))
		return name
	end 

	def create_white_pawns
		piece = "pawn"
		num = [1,2,3,4,5,6,7,8]
		side = "white"
		results = []
		board_locations = [[7,0], [7,1], [7,2], [7,3], [7,4], [7,5], [7,6], [7,7]]
		num.each do |num|
			location = (board_locations.shift)
			name = set_name(side, piece, num)
			game_piece = Pawn.new(location, name)
			assign_to_board(game_piece, location)
			results << game_piece
		end
		return results
	end

	def create_white_rooks
		piece = "rook"
		num = [1,2]
		side = "white"
		results = []
		board_locations = [[8,0], [8,7]]
		num.each do |num|
			location = (board_locations.shift)
			name = set_name(side, piece, num)
			game_piece = Rook.new(location, name)
			assign_to_board(game_piece, location)
			results << game_piece
		end
		return results
	end	

	def create_white_knights  
		piece = "knight"
		num = [1,2]
		side = "white"
		results = []
		board_locations = [[8,1],[8,6]]
		num.each do |num|
			location = (board_locations.shift)
			name = set_name(side, piece, num)
			game_piece = Knight.new(location, name)
			assign_to_board(game_piece, location)
			results << game_piece
		end
		return results
	end

	def create_white_bishops
		piece = "bishop"
		num = [1,2]
		side = "white"
		results = []
		board_locations = [[8,2],[8,5]]
		num.each do |num|
			location = (board_locations.shift)
			name = set_name(side, piece, num)
			game_piece = Bishop.new(location, name)
			assign_to_board(game_piece, location)
			results << game_piece
		end
		return results
	end

	def create_white_queen
		piece = "queen"
		side = "white"
		location = [8,3]
		results = []
		name = set_name(side, piece)
		game_piece = Queen.new(location, name)
		assign_to_board(game_piece, location)
		results << game_piece
		return results		
	end

	def create_white_king
		piece = "king"
		side = "white"
		location = [8,4]
		results = []
		name = set_name(side, piece)
		game_piece = King.new(location, name)
		assign_to_board(game_piece, location)
		results << game_piece
		return results	
	end

	def create_black_pawns
		piece = "pawn"
		num = [1,2,3,4,5,6,7,8]
		side = "black"
		results = []
		board_locations = [[2,0], [2,1], [2,2], [2,3], [2,4], [2,5], [2,6], [2,7]]
		num.each do |num|
			location = (board_locations.shift)
			name = set_name(side, piece, num)
			game_piece = Pawn.new(location, name)
			assign_to_board(game_piece, location)
			results << game_piece
		end
		return results
	end

	def create_black_rooks
		piece = "rook"
		num = [1,2]
		side = "black"
		results = []
		board_locations = [[1,0], [1,7]]
		num.each do |num|
			location = (board_locations.shift)
			name = set_name(side, piece, num)
			game_piece = Rook.new(location, name)
			assign_to_board(game_piece, location)
			results << game_piece
		end
		return results
	end	

	def create_black_knights  
		piece = "knight"
		num = [1,2]
		side = "black"
		results = []
		board_locations = [[1,1],[1,6]]
		num.each do |num|
			location = (board_locations.shift)
			name = set_name(side, piece, num)
			game_piece = Knight.new(location, name)
			assign_to_board(game_piece, location)
			results << game_piece
		end
		return results
	end

	def create_black_bishops
		piece = "bishop"
		num = [1,2]
		side = "black"
		results = []
		board_locations = [[1,2],[1,5]]
		num.each do |num|
			location = (board_locations.shift)
			name = set_name(side, piece, num)
			game_piece = Bishop.new(location, name)
			assign_to_board(game_piece, location)
			results << game_piece
		end
		return results
	end

	def create_black_queen
		piece = "queen"
		side = "black"
		location = [1,3]
		results = []
		name = set_name(side, piece)
		game_piece = Queen.new(location, name)
		assign_to_board(game_piece, location)
		results << game_piece
		return results		
	end

	def create_black_king
		piece = "king"
		side = "black"
		location = [1,4]
		results = []
		name = set_name(side, piece)
		game_piece = King.new(location, name)
		assign_to_board(game_piece, location)
		results << game_piece
		return results	
	end
end
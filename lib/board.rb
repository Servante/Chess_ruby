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
		@white_pieces = nil
		@black_pieces = nil
	end

	def show(color)

		if color == "white"

			puts <<-HEREDOC

		
		  +----+----+----+----+----+----+----+----+
		8 | #{(cells[1][0]).show_cell}  |  #{(cells[1][1]).show_cell} |  #{(cells[1][2]).show_cell} |  #{(cells[1][3]).show_cell} |  #{(cells[1][4]).show_cell} |  #{(cells[1][5]).show_cell} |  #{(cells[1][6]).show_cell} | #{(cells[1][7]).show_cell}  | 
		  +----+----+----+----+----+----+----+----+
		7 |  #{(cells[2][0]).show_cell} |  #{(cells[2][1]).show_cell} |  #{(cells[2][2]).show_cell} |  #{(cells[2][3]).show_cell} |  #{(cells[2][4]).show_cell} |  #{(cells[2][5]).show_cell} |  #{(cells[2][6]).show_cell} | #{(cells[2][7]).show_cell}  |
		  +----+----+----+----+----+----+----+----+
		6 |  #{(cells[3][0]).show_cell} |  #{(cells[3][1]).show_cell} |  #{(cells[3][2]).show_cell} |  #{(cells[3][3]).show_cell} |  #{(cells[3][4]).show_cell} |  #{(cells[3][5]).show_cell} |  #{(cells[3][6]).show_cell} | #{(cells[3][7]).show_cell}  |
		  +----+----+----+----+----+----+----+----+
		5 |  #{(cells[4][0]).show_cell} |  #{(cells[4][1]).show_cell} |  #{(cells[4][2]).show_cell} |  #{(cells[4][3]).show_cell} |  #{(cells[4][4]).show_cell} |  #{(cells[4][5]).show_cell} |  #{(cells[4][6]).show_cell} | #{(cells[4][7]).show_cell}  |
		  +----+----+----+----+----+----+----+----+
		4 |  #{(cells[5][0]).show_cell} |  #{(cells[5][1]).show_cell} |  #{(cells[5][2]).show_cell} |  #{(cells[5][3]).show_cell} |  #{(cells[5][4]).show_cell} |  #{(cells[5][5]).show_cell} |  #{(cells[5][6]).show_cell} | #{(cells[5][7]).show_cell}  |
		  +----+----+----+----+----+----+----+----+
		3 |  #{(cells[6][0]).show_cell} |  #{(cells[6][1]).show_cell} |  #{(cells[6][2]).show_cell} |  #{(cells[6][3]).show_cell} |  #{(cells[6][4]).show_cell} |  #{(cells[6][5]).show_cell} |  #{(cells[6][6]).show_cell} | #{(cells[6][7]).show_cell}  |
		  +----+----+----+----+----+----+----+----+
		2 |  #{(cells[7][0]).show_cell} |  #{(cells[7][1]).show_cell} |  #{(cells[7][2]).show_cell} |  #{(cells[7][3]).show_cell} |  #{(cells[7][4]).show_cell} |  #{(cells[7][5]).show_cell} |  #{(cells[7][6]).show_cell} | #{(cells[7][7]).show_cell}  |
		  +----+----+----+----+----+----+----+----+
		1 |  #{(cells[8][0]).show_cell} |  #{(cells[8][1]).show_cell} |  #{(cells[8][2]).show_cell} |  #{(cells[8][3]).show_cell} |  #{(cells[8][4]).show_cell} |  #{(cells[8][5]).show_cell} |  #{(cells[8][6]).show_cell} | #{(cells[8][7]).show_cell}  |
		  +----+----+----+----+----+----+----+----+
		  | A  |  B |  C |  D |  D |  F |  G |  H |

		  HEREDOC

	  else
	  	puts <<-HEREDOC

		
		  +----+----+----+----+----+----+----+----+
		8 | #{(cells[8][7]).show_cell}  |  #{(cells[8][6]).show_cell} |  #{(cells[8][5]).show_cell} |  #{(cells[8][4]).show_cell} |  #{(cells[8][3]).show_cell} | #{(cells[8][2]).show_cell} |  #{(cells[8][1]).show_cell} | #{(cells[8][0]).show_cell}  | 
		  +----+----+----+----+----+----+----+----+
		7 | #{(cells[7][7]).show_cell}  |  #{(cells[7][6]).show_cell} |  #{(cells[7][5]).show_cell} |  #{(cells[7][4]).show_cell} |  #{(cells[7][3]).show_cell} |  #{(cells[7][2]).show_cell} |  #{(cells[7][1]).show_cell} | #{(cells[7][0]).show_cell}  |
		  +----+----+----+----+----+----+----+----+
		6 | #{(cells[6][7]).show_cell}  |  #{(cells[6][6]).show_cell} |  #{(cells[6][5]).show_cell} |  #{(cells[6][4]).show_cell} |  #{(cells[6][3]).show_cell} |  #{(cells[6][2]).show_cell} |  #{(cells[6][1]).show_cell} | #{(cells[6][0]).show_cell}  |
		  +----+----+----+----+----+----+----+----+
		5 | #{(cells[5][7]).show_cell}  |  #{(cells[5][6]).show_cell}} |  #{(cells[5][5]).show_cell} |  #{(cells[5][4]).show_cell} |  #{(cells[5][3]).show_cell} |  #{(cells[5][2]).show_cell} |  #{(cells[5][1]).show_cell} | #{(cells[5][0]).show_cell}  |
		  +----+----+----+----+----+----+----+----+
		4 | #{(cells[4][7]).show_cell}  |  #{(cells[4][6]).show_cell} |  #{(cells[4][5]).show_cell} |  #{(cells[4][4]).show_cell} |  #{(cells[4][3]).show_cell} |  #{(cells[4][2]).show_cell} |  #{(cells[4][1]).show_cell} | #{(cells[4][0]).show_cell}  |
		  +----+----+----+----+----+----+----+----+
		3 | #{(cells[3][7]).show_cell}  |  #{(cells[3][6]).show_cell} |  #{(cells[3][5]).show_cell} |  #{(cells[3][4]).show_cell} |  #{(cells[3][3]).show_cell} |  #{(cells[3][2]).show_cell} |  #{(cells[3][1]).show_cell} | #{(cells[3][0]).show_cell}  |
		  +----+----+----+----+----+----+----+----+
		2 | #{(cells[2][7]).show_cell}  |  #{(cells[2][6]).show_cell} |  #{(cells[2][5]).show_cell} |  #{(cells[2][4]).show_cell} |  #{(cells[2][3]).show_cell} |  #{(cells[2][2]).show_cell} |  #{(cells[2][1]).show_cell} | #{(cells[2][0]).show_cell}  |
		  +----+----+----+----+----+----+----+----+
		1 | #{(cells[1][7]).show_cell}  |  #{(cells[1][6]).show_cell} |  #{(cells[1][5]).show_cell} |  #{(cells[1][4]).show_cell} |  #{(cells[1][3]).show_cell} |  #{(cells[1][2]).show_cell} |  #{(cells[1][1]).show_cell} | #{(cells[1][0]).show_cell}  |
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

	def path_to_move_clear?(board, game_piece, move)
		
		location = game_piece.location
		board = board
    # binding.pry
		if location[0] > move[0] && location[1] == move[1]  
			game_piece.go_north(board, location, move)
		elsif location[0] > move[0] && location[1] == move[1]
			game_piece.go_south(board, location, move)
		elsif location[0] == move[0] && location[1] > move[1]  
			game_piece.go_west(board, location, move)
		elsif location[0] == move[0] && location[1] < move[1]   
			game_piece.go_east(board, location, move)
		elsif location[0] > move[0] && location[1] > move[1]   
			game_piece.go_northwest(board, location, move)
		elsif location[0] > move[0] && location[1] < move[1]   
			game_piece.go_northeast(board, location, move)
		elsif location[0] < move[0] && location[1] > move[1]   
			game_piece.go_southwest(board, location, move)
		elsif location[0] < move[0] && location[1] < move[1]
			game_piece.go_southeast(board, location, move)
		end
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
		token = "\e[36m\u265f\e[0m"
		num = [1,2,3,4,5,6,7,8]
		side = "white"
		results = []
		board_locations = [[7,0], [7,1], [7,2], [7,3], [7,4], [7,5], [7,6], [7,7]]
		num.each do |num|
			location = (board_locations.shift)
			name = set_name(side, piece, num)
			game_piece = Pawn.new(location, name, token)
			assign_to_board(game_piece, location)
			results << game_piece
		end
		return results
	end

	def create_white_rooks
		piece = "rook"
		token = "\e[36m\u2656\e[0m"
		num = [1,2]
		side = "white"
		results = []
		board_locations = [[8,0], [8,7]]
		num.each do |num|
			location = (board_locations.shift)
			name = set_name(side, piece, num)
			game_piece = Rook.new(location, name, token)
			assign_to_board(game_piece, location)
			results << game_piece
		end
		return results
	end	

	def create_white_knights  
		piece = "knight"
		token = "\e[36m\u2658\e[0m"
		num = [1,2]
		side = "white"
		results = []
		board_locations = [[8,1],[8,6]]
		num.each do |num|
			location = (board_locations.shift)
			name = set_name(side, piece, num)
			game_piece = Knight.new(location, name, token)
			assign_to_board(game_piece, location)
			results << game_piece
		end
		return results
	end

	def create_white_bishops
		piece = "bishop"
		token = "\e[36m\u2657\e[0m"
		num = [1,2]
		side = "white"
		results = []
		board_locations = [[8,2],[8,5]]
		num.each do |num|
			location = (board_locations.shift)
			name = set_name(side, piece, num)
			game_piece = Bishop.new(location, name, token)
			assign_to_board(game_piece, location)
			results << game_piece
		end
		return results
	end

	def create_white_queen
		piece = "queen"
		token = "\e[36m\u2655\e[0m"
		side = "white"
		location = [8,3]
		results = []
		name = set_name(side, piece)
		game_piece = Queen.new(location, name, token)
		assign_to_board(game_piece, location)
		results << game_piece
		return results		
	end

	def create_white_king
		piece = "king"
		token = "\e[36m\u2654\e[0m"
		side = "white"
		location = [8,4]
		results = []
		name = set_name(side, piece)
		game_piece = King.new(location, name, token)
		assign_to_board(game_piece, location)
		results << game_piece
		return results	
	end

	def create_black_pawns
		piece = "pawn"
		token = "\e[35m\u265f\e[0m"
		num = [1,2,3,4,5,6,7,8]
		side = "black"
		results = []
		board_locations = [[2,0], [2,1], [2,2], [2,3], [2,4], [2,5], [2,6], [2,7]]
		num.each do |num|
			location = (board_locations.shift)
			name = set_name(side, piece, num)
			game_piece = Pawn.new(location, name, token)
			assign_to_board(game_piece, location)
			results << game_piece
		end
		return results
	end

	def create_black_rooks
		piece = "rook"
		token = "\e[35m\u265c\e[0m"
		num = [1,2]
		side = "black"
		results = []
		board_locations = [[1,0], [1,7]]
		num.each do |num|
			location = (board_locations.shift)
			name = set_name(side, piece, num)
			game_piece = Rook.new(location, name, token)
			assign_to_board(game_piece, location)
			results << game_piece
		end
		return results
	end	

	def create_black_knights  
		piece = "knight"
		token = "\e[35m\u265e\e[0m" 
		num = [1,2]
		side = "black"
		results = []
		board_locations = [[1,1],[1,6]]
		num.each do |num|
			location = (board_locations.shift)
			name = set_name(side, piece, num)
			game_piece = Knight.new(location, name, token)
			assign_to_board(game_piece, location)
			results << game_piece
		end
		return results
	end

	def create_black_bishops
		piece = "bishop"
		token = "\e[35m\u265d\e[0m"
		num = [1,2]
		side = "black"
		results = []
		board_locations = [[1,2],[1,5]]
		num.each do |num|
			location = (board_locations.shift)
			name = set_name(side, piece, num)
			game_piece = Bishop.new(location, name, token)
			assign_to_board(game_piece, location)
			results << game_piece
		end
		return results
	end

	def create_black_queen
		piece = "queen"
		token = "\e[35m\u265b\e[0m"
		side = "black"
		location = [1,4]
		results = []
		name = set_name(side, piece)
		game_piece = Queen.new(location, name, token)
		assign_to_board(game_piece, location)
		results << game_piece
		return results		
	end

	def create_black_king
		piece = "king"
		token = "\e[35m\u265a\e[0m" 
		side = "black"
		location = [1,3]
		results = []
		name = set_name(side, piece)
		game_piece = King.new(location, name, token)
		assign_to_board(game_piece, location)
		results << game_piece
		return results	
	end
end
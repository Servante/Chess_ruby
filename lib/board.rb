# frozen_string_literal: true

require_relative 'cell.rb'


def reload
	load 'lib/board.rb'
end


class Board
		attr_accessor :cells

	def initialize
		@cells = create_board
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


	private

	def create_board
		hash = Hash.new
		counter = 1
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

	# def create_cell(counter)
	# 	if counter == 6
	# 		new_cell = Cell.new(" ", true)
	# 	elsif
	# 		new_cell = Cell.new
	# 	end
	# 	return new_cell
	# end

end
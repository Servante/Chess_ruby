# frozen_string_literal: true

class Player
	attr_accessor :name, :side

	def initialize(name, side)
		@name = name
		@side = side
	end
end

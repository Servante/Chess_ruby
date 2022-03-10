# frozen_string_literal: true

class Player
	attr_accessor :name, :side, :pieces

	def initialize(name, side)
		@name = name
		@side = side
		@pieces = {}
	end
end

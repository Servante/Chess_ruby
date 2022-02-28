# frozen_string_literal: true

class Cell
	attr_accessor :value, :stackable

	def initialize(value = " ")
		@value = value
	end
end
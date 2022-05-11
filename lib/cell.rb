# frozen_string_literal: true

# require 'pry'

class Cell
	attr_accessor :value, :stackable

	def initialize(value = " ")
		@value = value
	end

	def show_cell
	  cell_value = self.value
	  cell_value == " " ? "#{self.value}" : "#{self.value.token}"
	end
end
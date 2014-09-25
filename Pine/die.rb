class Die
	def initialize
		roll
	end

	def roll
		@number_showing = 1 + rand(6)
	end

	def showing
		@number_showing
	end
	def cheat new_number
		if new_number < 7 && new_number > 0
			@number_showing = new_number
		else
			@number_showing
		end
	end
end

dice1 = Die.new
puts dice1.showing
puts dice1.roll
puts dice1.cheat 4
puts dice1.cheat 12


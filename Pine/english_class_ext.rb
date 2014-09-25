class Integer	
	def to_eng
		if self == 5
			english = 'five'
		else
			english = "twenty"
		end
		english
	end
end

puts 5.to_eng
puts 100.to_eng
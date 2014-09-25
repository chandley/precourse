puts "first year please"
start_year = gets.chomp.to_i
puts "second year please"
end_year = gets.chomp.to_i
puts ''
while start_year < end_year
	is_leap = false
	if start_year % 4 == 0
		is_leap = true
	end

	if start_year % 100 == 0
		is_leap = false
	end

	if start_year % 400 == 0
		is_leap = true
	end

	if is_leap == true
	  puts start_year.to_s
	end
	start_year = start_year +1
end


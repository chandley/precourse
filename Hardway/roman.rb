
def to_roman number
	@roman = ''
	#@thousands
	@roman = @roman + show_power_of_ten(number / 1000, ' ', ' ', 'M')
	#hundreds
	@roman = @roman + show_power_of_ten(number % 1000 / 100, 'M', 'D', 'C')
	#tens
	@roman = @roman + show_power_of_ten(number % 100 / 10, 'C', 'L', 'X')
	#units
	@roman = @roman +	show_power_of_ten( number % 10, 'X', 'V', 'I')
end


#this routine does not work properly!
def to_roman2 number	
	@roman = ''
	marker = ['I','V','X','L','C','D','M']
	(0..Math.log10(number).to_i).each do |i|
		puts i
		@unit_number = (number % (10^(i+1)))/10^i
		puts @unit_number	
		@roman = @roman + show_power_of_ten(@unit_number,marker[2*i+2],marker[2*i+1],marker[2*i])	
	end
	@roman.reverse
end



def show_power_of_ten number , ten_marker, five_marker, unit_marker
	if number == 9 
		return unit_marker + ten_marker
	elsif number == 4
		return unit_marker + five_marker
	else
		return five_marker * (number / 5) + unit_marker*(number % 5)
	end
end


puts to_roman 1994
puts to_roman2 12
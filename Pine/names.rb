input = 'default'
names = []
until input == ''
	input = gets.chomp
	names.push input
end
names.pop	# remove last

until names == []
	arr_size = names.length
	i = 0
	until i == names.length
		if names[i]>names[0]
			temp =names[i]
			names[i] = names[0]
			names [0]= temp
		end
		i = i + 1
	end
	puts names.pop
end





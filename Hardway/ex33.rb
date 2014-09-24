

def populate target, array, increment
	i = 0
	while i < target
		puts "At the top of i is #{i}"
		array.push(i)
		i += increment
		puts "Numbers now: ", array
		puts "At the bottom i is #{i}"
	end
end

def populate2 target, array, increment
	(0..target).step(increment) {|i| array.push(i)}
end

numbers = []
populate 9, numbers, 3

puts "The numbers: "
numbers.each {|number| puts number}
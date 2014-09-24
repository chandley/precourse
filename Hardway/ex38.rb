ten_things = "Apples Oranges Crows Telephone Light Sugar"
puts "Hang on, not ten"

stuff = ten_things.split(' ')
more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

while stuff.length < 10
	puts "adding #{stuff.push(more_stuff.pop).last}" #stuff.push returns array
	puts "now have #{stuff.length} items"
end

puts "there we go #{stuff}"
puts stuff.join", "
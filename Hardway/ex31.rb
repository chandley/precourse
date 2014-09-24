puts "You enter a dark room with two doors"
puts "Do you go through door 1 or door 2"
print ">"
door = $stdin.gets.chomp

case door
	when '1'
		puts "there is a giant bear eating a cheescake"
		puts "1 take cake"
		puts "2 scream at bear"
		print ">"
		bear = $stdin.gets.chomp
		case bear
			when '1'
				puts "the bear eats your face"
			when '2'
				puts "the bear eats your legs"
			else
				puts "doing %s is probably better. Bear runs off"
		end

	when '2'
		puts "Cthulu here"
		puts "1 bluberries"
		puts "2 dragons"
		puts "3 dogs"
		print ">"
		insanity = $stdin.gets.chomp
		case insanity
			when "1","2" 
				puts "your body survives with jello brain"
			else
				puts "your eyes melted"
		end
	else
		puts "you stumble onto a knife and die"

end

def pose_question question, response	# response is array
	puts question
	(1..response.length).each do |i|
		puts (i).to_s + " :" + response[i-1]	#number then response option from array
	end
	print ">"
	return $stdin.gets.chomp
end

case pose_question "dark room choose a door", ["left door", "right door"]
 	when '1' # door1
 		case pose_question "there is a bear", ["take cake", "scream at bear"]
 			when '1'
 				puts "bear ate your face"
 			when '2'
 				puts "bear ate your legs"
 			else
 				puts "that was the best option. bear ran off"
 		end
 	when '2' # door2
 		case pose_question "Cthulu's face looks at you", ["blueberries","dragonfly","cabbage"]
			when '1','2'
				puts "your brain turned to jelly"
			else
				puts "your eyeballs melted"
		end
	else # no door
		puts "you stumble around, fall on a knife and die"	
end



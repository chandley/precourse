def gold_room
  puts "room has gold - take how much?"
  print ">"
  choice = $stdin.gets.chomp

  if choice =~ /\d+/
  	how_much = choice.to_i
  else
  	dead("Please enter a number")
  end

  if how_much < 50
  	puts "not too much, you win"
  	exit (0)
  else
  	dead("Too greedy!")
  end
end

def bear_room
	puts """
there is a bear here
the bear has honey
the fat bear is in front of door
how will you move the bear?
"""
	bear_moved = false
	while true
		print ">"
		case $stdin.gets.chomp
			when "take honey"
				dead("bear slaps your face off")
			when "taunt bear"
				puts "bear has moved you can enter" unless bear_moved
				dead("bear upset, chews your leg off") if bear_moved
				bear_moved = true
			when "open door"
				gold_room if bear_moved
			else
				puts "sorry don't understand"
		end
	end
end

def cthulu_room
	puts """
you see evil cthulu_room
do you flee or eat your head?
"""
	print ">"
	choice = $stdin.gets.chomp
	if choice.include? "flee"
		start
	elsif choice.include? "head"
		dead("tasty!")
	else
		cthulu_room
	end
end

def dead(why)
	puts why, "good job!"
	exit(0)
end

def start
	puts """
you are in dark room
there are doors to left and right
which one do you take?
	"""
	print "> "
	case  $stdin.gets.chomp
		when 'left'
			bear_room
		when 'right'
			cthulu_room
		else
			dead("you stumble around and starve to death")
	end
end

start



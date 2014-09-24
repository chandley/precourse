

rooms = ['inventory','dining room','kitchen','drawing room','hall']
room_moves = [{},{"n" => 3, "e" => 2},{'w' => 1},{'n' => 4, 's' => 1},{'s' => 3}]

items = {'plate of food' => 1, 'butter knife' =>1, 'sofa' => 3}
monsters = {'hobgoblin' => 2}

def show_room room_number, rooms, room_moves, items, monsters
	puts "You are in the #{rooms[room_number]}"
	room_moves[room_number].each do |direction,new_room| 
		puts "you see an exit #{direction.upcase}"
	end
	items.each {|item,location| puts ("there is " + item) if location==room_number}
	monsters.each {|monster,location| puts (monster + " goes AARGH") if location==room_number}
end

def move_room room_number, direction, room_moves
	new_room = room_moves[room_number][direction]
#   need to add check if new room no good
#	new_room = room_number if new_room < 1
end

def user_move room_number, room_moves
	puts "which direction"
	print "> "
	new_room = move_room room_number,$stdin.gets.chomp,room_moves
#	new_room = room_number if new_room.nil? # not a good check
	if new_room.nil?
		new_room = room_number
	end
	return new_room	
end

current_room = 1

(1..3).each do |i|
	show_room current_room, rooms, room_moves, items, monsters	
	current_room = user_move current_room, room_moves
end



class Dungeon
	def initialize
		@@rooms = []
		@@items = []
	end

	def add_room room
		@@rooms.push(room)
	end

	def add_item item
		@@items.push(item)
	end

end

class DungeonThing
	def initialize description
		@description = description
	end

	def describe
		puts @description
	end
end

class Room < DungeonThing
	def initialize description
		super	
		@exits =  {}			
	end

	def add_exit direction, room
		@exits[direction] = room
	end

	def describe
		super
		@exits.each do |direction,room|
		 	puts "there is an exit #{direction.upcase}"
		end
#		puts @@items.select {|description,room| room==self}  # is there a better way?
	end

	def move direction
		if @exits[direction].nil?
			new_room = self
		else
			new_room = @exits[direction]
		end # stay in room if bad exit chosen
	end
end

class DungeonItem   < DungeonThing
	def initialize description, room
		@description = description # can we inherit this?
		@room = room
	end
end

my_dungeon = Dungeon.new

puts dining_room = Room.new 'A musty dining room'
sitting_room = Room.new 'A sunny sitting room'
kitchen = Room.new 'A cluttered kitchen'

saucepan = DungeonItem.new 'A rusty saucepan', kitchen

dining_room.add_exit 'N', sitting_room
dining_room.add_exit 'E', kitchen
sitting_room.add_exit 'S', dining_room
kitchen.add_exit 'W', dining_room

current_room = dining_room

my_dungeon.add_room sitting_room
my_dungeon.add_room dining_room
my_dungeon.add_room	kitchen
my_dungeon.add_item	saucepan

current_room.describe
current_room.move 'N'
current_room.describe
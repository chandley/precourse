class Dungeon
	def initialize
		@rooms = []
		@items = []
	end

	def add_room room
		@rooms.push(room)
	end

	def add_item item
		@items.push(item)
	end

	def rooms
		@rooms
	end

	def items
		@items
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
#		puts Dungeon.items.select {|description,room| room==self}  # is there a better way? doesn't work
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

my_dungeon.add_room Room.new 'A musty dining room'
my_dungeon.add_room Room.new 'A sunny sitting room'
my_dungeon.add_room Room.new 'A cluttered kitchen'

my_dungeon.add_item DungeonItem.new 'A rusty saucepan', my_dungeon.rooms[0]

my_dungeon.rooms[0].add_exit 'N', my_dungeon.rooms[1]
my_dungeon.rooms[1].add_exit 'S', my_dungeon.rooms[0]
my_dungeon.rooms[0].add_exit 'W', my_dungeon.rooms[2]
my_dungeon.rooms[2].add_exit 'E', my_dungeon.rooms[0]

current_room = my_dungeon.rooms[0]

current_room.describe
current_room = current_room.move 'N'
current_room.describe
class Dungeon
	def initialize
		@rooms = []
		self.add_room Room.new "Inventory" #inventory is a special room no exits
	end

	def add_room room
		@rooms.push(room)
	end

	def rooms # do I need this?
		@rooms
	end
end

class Dungeon_thing
	def initialize description
		@description = description
	end

	def describe
		puts @description
	end
end

class Room < Dungeon_thing
	def initialize description
		super	
		@exits =  {}	
		@items = []		
	end

	def add_exit direction, room
		@exits[direction] = room
	end

	def add_item item
		@items.push item
	end

	def describe
		super
		@exits.each do |direction,room|
		 	puts "there is an exit #{direction.upcase}"
		end
		@items.each {|item| item.describe}
	end

	def move direction
		if @exits[direction].nil?
			new_room = self # stay in room if bad exit chosen
			puts "Can't move, try again"
		else
			new_room = @exits[direction]
			puts "You go #{direction}"
		end 
	end
end

class Dungeon_item   < Dungeon_thing
	def initialize description #, weight
		super
#		@weight = weight
	end
end

my_dungeon = Dungeon.new
inventory = my_dungeon.rooms[0]

my_dungeon.add_room Room.new 'A musty dining room'
my_dungeon.add_room Room.new 'A sunny sitting room'
my_dungeon.add_room Room.new 'A cluttered kitchen'
my_dungeon.add_room Room.new 'A room with no exits'

# i don't like the way we add exits - is there a better way?
my_dungeon.rooms[1].add_exit 'N', my_dungeon.rooms[2]
my_dungeon.rooms[2].add_exit 'S', my_dungeon.rooms[1]
my_dungeon.rooms[1].add_exit 'W', my_dungeon.rooms[3]
my_dungeon.rooms[3].add_exit 'E', my_dungeon.rooms[1]

my_dungeon.rooms[3].add_item Dungeon_item.new 'A rusty saucepan' #, 10
inventory.add_item Dungeon_item.new 'A boiled sweet covered in pocket fluff'

current_room = my_dungeon.rooms[1]
current_room.describe
current_room = current_room.move 'W'
current_room.describe
puts ''

#inventory.describe
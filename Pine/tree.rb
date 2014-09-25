class OrangeTree
	def initialize
		@age = 0
		@height = 1
		@oranges = 0
	end

	def oneYearPasses
		if @age > 20
			puts "Tree is dead"
			exit
		end
		@oranges = 0 #all fell off from last year
		@age += 1
		@height += 1
		if @age > 5
			@oranges = @oranges + @age - 5
		end



		puts "Tree is "+ @age.to_s + "years old"
	end

	def countOranges
		puts "Tree has " + @oranges.to_s + " oranges"
	end

	def pickOrange
		if @oranges > 0
			puts "You ate a yummy orange"
			@oranges -= 1
		else
			puts "No oranges on tree"
		end
	end
end

my_tree = OrangeTree.new
8.times do
	my_tree.oneYearPasses
end
my_tree.countOranges
5.times do
	my_tree.pickOrange
	my_tree.countOranges
end

15.times do
	my_tree.oneYearPasses
end

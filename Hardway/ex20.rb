input_file = ARGV.first		

def print_all(f)
	puts f.read
end

def rewind(f)
	f.seek(0)
end

def print_a_line(line_count, f)
	puts"#{line_count},#{f.gets.chomp}"
end

current_file = open(input_file)

puts "First print whole file:\n"

print_all(current_file)
rewind(current_file)
#
puts "Now print 3 lines"

(1..3).each do |line| 
	print_a_line(line,current_file)
end
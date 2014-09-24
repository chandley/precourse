filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you don't want to do that, press CTRL-C (^C)"
puts "If you do want that, hit RETURN"

$stdin.gets

puts "Opening the file..."
target = open(filename, 'w')

puts "Truncating the file - bye!"
#target.truncate(0)

puts "Now, please enter 3 lines"

(1..3).each do |line|
	print "line #{line}:"
	target.write($stdin.gets.chomp+"\n")
end
puts "now closing"
target.close



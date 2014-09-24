filename = ARGV.first
#filename = ARGV

txt = open(filename)

puts "Here's your file #{filename}:"
File.open(filename) do |my_file|
while line = my_file.gets #false if nil return
	puts my_file.lineno.to_s + " " + line
end
end

my_file = File.open(filename, "r+") 
my_file.puts "Chris is still skill"
my_file.close


#file closed automatically?

#print txt.read

#print "Type the filename again"
#file_again = $stdin.gets.chomp

#txt_again = open(file_again)

#print txt_again.read
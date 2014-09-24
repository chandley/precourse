user_name = ARGV.first
prompt = '>'

puts "Hi there #{user_name}"
puts "I'd like to ask a few questions"
puts "Do you like me #{user_name} ?", prompt
likes = $stdin.gets.chomp

puts "Where do you live #{user_name} ?", prompt
lives = $stdin.gets.chomp

puts "What type of computer", prompt	
computer = $stdin.gets.chomp

puts """
OK, said #{likes} about liking me
You live in #{lives}, not sure where that is
You have a #{computer}. Nice
"""

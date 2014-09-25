command =''
while command != 'bye'
  puts command unless command ==''
  command = gets.chomp
end
puts 'come again soon'
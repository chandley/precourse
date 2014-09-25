puts "name please"
full_name = gets.chomp
name_array = full_name.split
name_length = 0
name_array.each do |name| 
  name_length += name.length
 end
puts 'total length ' + name_length.to_s

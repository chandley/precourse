puts 'whats your first name?'
first_name = gets.chomp
puts 'whats your middle name?'
middle_name = gets.chomp
puts 'whats your last name?'
last_name = gets.chomp
puts 'total length is '+ (first_name.length + middle_name.length + last_name.length).to_s + ' characters'

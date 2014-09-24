#create state mapping

states = {
	'Oregon' => 'OR',
	'Florida' => 'FL',
	'California' => 'CA',
	'New York' => 'NY'
}

cities = {
	'CA' => 'San Francisco',
	'MI' => 'Detroit',
	'FL' => 'Jacksonville'
}

cities['NY'] = 'New York'
#cities['OR'] = 'Portland'

puts '-' * 20
puts "NY State has #{cities['NY']}"
puts '-' * 20
puts states.each {|state,abbr| puts "#{state} State has #{cities[abbr]}"}
puts '-' * 20
states.each do |state,abbr| 
	city = cities[abbr]
	city ||= '*no city*' # check if city is nil
	puts "#{state} State has #{city}"
end
puts '-' * 20
states.each do |state,abbr|
	city = cities[abbr]
	city ||= '*no city*' # check if city is nil
	puts "#{state} State has abbreviation #{abbr} and has city #{city}"
end
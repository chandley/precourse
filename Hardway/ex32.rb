fruits = ['apples','oranges','pears','bananas']
change = [1,'pennies',2,'dimes',3,'quarters']

(1..5).each {|count| puts "This is count #{count}"}
fruits.each {|fruit| puts "A type of fruit: #{fruit}"}
change.each {|i| puts "I got #{i}"}
elements = []
(0..5).each {|i| elements.push(i)}
elements.each {|i| puts "element was #{i}"}
	


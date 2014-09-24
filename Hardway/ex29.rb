people, cars, trucks = 30, 40, 15

puts "we should " + (cars >= people ? "" : "not ") + "take the cars"
puts trucks > cars ? "too many trucks" : "Maybe take trucks"
puts people > trucks ? "ok take trucks" : "let's stay home"
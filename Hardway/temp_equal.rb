def eq(a, b)
  puts "#{[a, '==',  b]} : #{a == b}"
  puts "#{[a, '===', b]} : #{a === b}"
  puts "#{[a, '.eql?', b]} : #{a.eql?(b)}"
  puts "#{[a, '.equal?', b]} : #{a.equal?(b)}"
end

eq("all", "all")
eq(:all, :all)
eq(Object.new, Object.new)
eq(3, 3)
eq(1, 1.0)
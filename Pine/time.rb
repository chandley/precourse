a = Time.new
puts a.to_s
b = Time.mktime(1969,6,1,12,00,00)
puts b.to_s
diff = b -a
puts diff.to_s
puts (b+1000000000).to_s
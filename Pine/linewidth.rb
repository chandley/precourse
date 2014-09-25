linewidth = 60
col1 = 12
col2 = 35
col3 = linewidth -col1 - col2

puts"table of contents".center(linewidth)
puts ""
puts "chapter 1".ljust(col1) + "numbers".ljust(col2)+"page 1".rjust(col3)
puts "chapter 2".ljust(col1) + "numbers".ljust(col2)+"page 200".rjust(col3)
doYouLike = Proc.new do |good_thing|
	puts 'I really like ' +good_thing+'!'
end

doYouLike.call 'chocolate'
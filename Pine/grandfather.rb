def grandfather_clock &block
	@time_now = Time.now.hour%12
	if @time_now == 0
		 @time_now += 12
	end
	@time_now.times {block.call}
end

grandfather_clock {puts 'Bong!'}



def fb(n)
	case 0
		when n % 15 
			return 'fizbuzz'
		when n % 5 
			return 'buzz'
		when n % 3
			return 'fizz'
		else
			return n.to_s
		end
	end


(0..20).each {|i| puts fb(i)}

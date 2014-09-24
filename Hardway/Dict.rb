module Dict
	def Dict.new(num_buckets=256)
		#initialize with number of buckets
		aDict = []
		(0...num_buckets).each {|i| aDict.push([])}
		return aDict
	end

	def Dict.hash_key(aDict, key)
		#given key creates number and converts index for aDicts's buckets
		return key.hash % aDict.length
	end

	def Dict.get_bucket(aDict, key)
		#given key, find bucket
		bucket_id = Dict.hash_key(aDict,key)
		return aDict [bucket_id]
	end

	def Dict.get_slot (aDict, key, default = nil)
		#returns index, key, value of a slot
		bucket = Dict.get_bucket(aDict,key)
		bucket.each_with_index do |kv, i|
			k,v = kv
			if key == k
				return i,k,v
			end
		end

		return -1, key, default
	end

	def Dict.get(aDict, key, default = nil)
		#get value in bucket for given key
		i,k,v = Dict.get_slot(aDict,key, default= default)
		return v
	end

	def Dict.set(aDict, key, value)
		#set key to value, replace any previous value
		bucket = Dict.get_bucket(aDict, key)
		i,k,v = Dict.get_slot(aDict, key)
		if i >= 0
			bucket[i] = [key, value]
		else
			bucket.push [key,value]
		end
	end

	def Dict.delete(aDict, key)
		#deletes key from dict
		bucket = Dict.get_bucket(aDict,key)
		(0...bucket.length).each do |i|
			k,v = bucket[i]
			if key == k
				bucket.delete_at(i)
				break
			end
		end
	end

	def Dict.list(aDict)
		#print what's in the dict
		aDict.each do |bucket|
			if bucket
				bucket.each {|k,v| puts k,v}
			end
		end
	end
end






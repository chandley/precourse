class Song
	def initialize(lyrics)
		@lyrics = lyrics
	end

	def sing_me_a_song
		@lyrics.each {|line| puts line}
	end
end

happy_bday = Song.new (["Happy birthday to you","Happy birthday to you"])
bulls_on_parade = Song.new(["The cows in the field go mo","Then we hit them on the head","And that's how we get hamburgers"])

happy_bday.sing_me_a_song
bulls_on_parade.sing_me_a_song
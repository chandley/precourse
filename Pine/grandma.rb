puts 'speak to grandma'
speech = ''
bye_count = 0
until bye_count == 3
    speech = gets.chomp
    if speech == 'BYE' 
    	bye_count = bye_count + 1
    else
    	bye_count = 0
    end

	if speech == speech.upcase
		puts "NO, NOT SINCE "+(1930+rand(21)).to_s + "!"
	else
		puts "SPEAK UP SONNY!"
	end
end
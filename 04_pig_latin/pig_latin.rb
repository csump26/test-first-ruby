def translate(string)
	strings = string.split(" ")

	translate_string = []
	strings.each do |word|
		characters = word.split('')
		characters.each do 
			if !characters[0].match(/[aeiou]/) || characters[0] == 'u'
				characters << characters[0]
				characters.shift
			else
				break
			end
		end
		translate_string << characters.join('') + 'ay'
	end
	translate_string.join(" ")
end
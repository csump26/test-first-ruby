def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word, number_of_repeats=2)
	([word] * number_of_repeats).join(" ")
end

def start_of_word(word, number)
	word[0, number]
end

def first_word(sentence)
	words = sentence.split
	words[0]
end

def titleize(sentence)
	little_words = ["and", "the", "on", "over"]
	words = sentence.split
	words.each_index do |i|
		if i == 0 || !little_words.include?(words[i])
			words[i] = words[i].capitalize
		end
	end
	words.join(" ")
end

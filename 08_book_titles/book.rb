class Book
	attr_accessor :title
	
	def title
		exceptions = ["and", "in", "the", "of", "on", "a", "an"]
		words = @title.split(" ")
		words.each_index do |i|
			if !exceptions.include?(words[i]) || i == 0
				words[i] = words[i].capitalize
			end
		end
		words.join(" ")
	end

end
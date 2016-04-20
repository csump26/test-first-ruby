class Timer
	attr_accessor :seconds

	def initialize(seconds = 0)
		@seconds = seconds
	end

	def time_string
		time = convert_time(self.seconds)
		hours = padded(time[:hours])
		minutes = padded(time[:minutes])
		new_seconds = padded(time[:seconds])

		"#{hours}:#{minutes}:#{new_seconds}"
	end

	def padded(number)
		padded_number = ""
		if number < 10
			padded_number = "0#{number}"
		else
			padded_number = number.to_s
		end
		return padded_number
	end

	def convert_time(seconds)
		time = {:hours => 0, :minutes => 0, :seconds => 0}
		seconds.times do |s|
			time[:seconds] += 1
			if time[:seconds] == 60
				time[:minutes] += 1
				time[:seconds] = 0
			end

			if time[:minutes] == 60
				time[:hours] += 1
				time[:minutes] = 0
			end
		end
		time
	end
end
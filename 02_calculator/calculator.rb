def add(number_one, number_two)
	number_one + number_two
end

def subtract(number_one, number_two)
	number_one - number_two
end


def sum(numbers)
	numbers.inject(0) { |sum, number|  sum += number}
end


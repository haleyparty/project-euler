def start(num_digits)
	num_start = ''
	num_digits.times {num_start += '9' }
	num_start = num_start.to_i
end

def finish(num_digits)
	num_finish = '1'
	(num_digits - 1).times {num_finish += '0' }
	num_finish = num_finish.to_i
end

def palindrome(num_digits)

	num_start = start(num_digits)
	num_finish = finish(num_digits)

	max = 0

	num_start.downto(num_finish) do |i|
		i.downto(num_finish) do |j|
			result = i * j
			max = result if result > max && result.to_s == result.to_s.reverse
		end
	end
	return max
end

puts palindrome(3)
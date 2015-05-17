def smallest_multiple(num)

	lcm = 1

	(2..num).each do |i|
		puts lcm
		lcm *= i / gcd(lcm, i)
	end

	lcm

end

def gcd(a, b)

	while b > 0
		a = a % b
		return b if a == 0
		b = b % a
	end

	a
end

puts smallest_multiple(20)

# function body could also be one line: (1..num).inject(:lcm)
# review me later
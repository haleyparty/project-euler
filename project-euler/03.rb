def largest_prime_factor(num)

	primes = []

	div = 2
	while num > 1
		while num % div == 0
			primes.push(div)
			num /= div
		end
		div += 1
	end

	return primes.max

end

puts largest_prime_factor(13195)
puts largest_prime_factor(600851475143)

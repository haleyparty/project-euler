# Solution used in Coderbyte had a timeout error when running to 10,001. I found that Ruby has a mathn
# library to give this an elegant solution. An alternative would be using sieve of Eratosthenes,
# whereby you input an n > 1, create an array of boolean values indexed by integers 2 to n (for
# 10,001, this had to be done in smaller chunks, i.e. 2 to 1,000, etc) all set to be true. Then
# launch a loop that goes from the current index and does not exceed the sqrt(n). If the boolean in the
# array at the current index is true, you enter another loop that iterates i^2, i^2+i, i^2+2i, i^2+3i...
# and does not exceed n. For each iteration point, set array[iteration] = false. Finally, return all
# integers where their indexed boolean value = true.

def nth_prime_num(nth)

	require 'mathn'

	return Prime.take(10001).last

end

puts nth_prime_num(6)
puts nth_prime_num(10001)
def even_fibonacci(num)

	fib = [1, 2]

	while fib[-2] + fib[-1] < num
		fib << fib[-2] + fib[-1]
	end

	sum = 0
	fib.each { |x| sum += x if x % 2 == 0 }

	return sum	

end
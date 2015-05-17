def mult_of_3_or_5(num)

	sum = 0
	i = 0
	while i < num
		sum += i if i % 3 == 0 || i % 5 == 0
		i += 1
	end

	return sum
end
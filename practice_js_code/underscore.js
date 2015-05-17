function forEach(arr, change) {
	for (var i = 0; i < arr.length; i++)
		arr[i] = change(arr[i]);
}

function map(arr, change) {
	result = [];
	for (var i = 0; i < arr.length; i++)
		result.push(change(arr[i]));
	return result;
}

function filter(arr, criteria) {
	result = [];
	for (var i = 0; i < arr.length; i++)
		if (criteria(arr[i]))
			result.push(arr[i]);
	return result;
}

function find(arr, criteria) {
	for (var i = 0; i < arr.length; i++)
		if (criteria(arr[i]))
			return arr[i];
}

function reduce(arr, combine, start) {
	current = start;
	for (var i = 0; i < arr.length; i++)
		current = combine(arr[i], current)
	return current;
}

function sortBy(arr, function) {
	swapped = true;
	while (swapped) {
		swapped = false;
		for (var i = 0; i < arr.length; i++) {
			if (function(arr[i]) > function(arr[i+1])
				temp = arr[i];
				arr[i] = arr[i + 1];
				arr[i + 1] = temp;
				swapped = true;
			}
		}
	}
}

function max(arr) {
	maxNum = arr[0];
	for (var i = 1; i < arr.length; i++) {
		if (arr[i] > maxNum)
			maxNum = arr[i];
	}
	return maxNum;
}

function min(arr) {
	minNum = arr[0];
	for (var i = 1; i < arr.length; i++) {
		if (arr[i] < minNum)
			minNum = arr[i];
	}
	return minNum;
}

function some(arr, criteria) {
	for (var i = 0; i < arr.length; i++) {
		if (criteria(arr[i]))
			return true;
	}
	return false;
}

function every(arr, criteria) {
	for (var i = 0; i < arr.length; i++) {
		if (!criteria(arr[i]))
			return false;
	}
	return true;
}

// NEW ATTEMPTS

function contains(arr, value) {
	for (var i = 0; i < arr.length; i++) {
		if (arr[i] == value)
			return true;
	}
	return false;
}

function invoke(arr, method) {
	for (var i = 0; i < arr.length; i++)
		arr[i] = arr[i].method();
}

function pluck(arr, propertyName) {
	result = [];
	for (var i = 0; i < arr.length; i++)
		result.push(arr[i][propertyName]);
	return result;
}

function reduceRight(arr, combine, start) {
	current = start;
	for (var i = arr.length - 1; i = 0; i--)
		current = combine(arr[i], current)
	return current;
}

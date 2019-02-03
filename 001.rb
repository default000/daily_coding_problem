# This problem was asked by Google.

# Given a stack of N elements, interleave the first half of the stack with the second half reversed using only one other queue. 

# For example, if the stack is [1, 2, 3, 4, 5], it should become [1, 5, 2, 4, 3].


def interleave(arr)
	out = []
	first = 0
	last = arr.length - 1
	i = 0

	while i <= arr.length / 2
		out << arr[first]
		out << arr[last] unless last == first
		first += 1
		last -= 1
		i += 1
	end

	p out
end

p interleave([1, 2, 3, 4, 5]) == [1, 5, 2, 4, 3]
# One optimization for bubblesort is to only swap up to the bubbled value.
# If you made one pass, then the largest value is already at the end.

# One question is how does bubblesort know it's done?
# No more swaps? Value to keep track of when last bubbled index has a value of 1?
# Websites are saying that you need to make one pass, but that makes no sense.
# It's called bubble sort because by design the largest value in the pass goes to the end.

def bubble_sort(arr)
	bubble_index = arr.length - 1
	while bubble_index > 0
		arr[0..bubble_index - 1].each_index do |index|
			if arr[index] > arr[index + 1]
				arr[index], arr[index + 1] = arr[index + 1], arr[index]
			end
		end
		bubble_index -= 1
	end
	return arr
end

random_array = Array.new(10) {|i| i = rand(1..20)}
shuffled_random_array = random_array.shuffle
p shuffled_random_array
p bubble_sort(shuffled_random_array)

# [20, 8, 15, 9, 18, 5, 7, 14, 8, 12]
# [5, 7, 8, 8, 9, 12, 14, 15, 18, 20]
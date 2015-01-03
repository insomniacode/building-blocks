# Build a method #bubble_sort that takes an array and returns a sorted array. 
# It must use the bubble sort methodology 
# (using #sort would be pretty pointless, wouldn't it?).

def bubble_sort(array)
	
	for i in 0...array.length  
		for j in 0..(array.length - i - 2)  
			array[j], array[j + 1] = array[j + 1], array[j]  if array[j + 1] < array[j]  
		end  
			puts array.to_s # display bubble sorting progress
	end  


end

bubble_sort([4, 3, 78, 2, 0, 2]) # => [0,2,2,3,4,78]


# Now create a similar method called #bubble_sort_by which sorts an array but accepts a block.
# The block should take two arguments which represent the two elements currently being compared. 
# Expect that the block's return will be similar to the spaceship operator you 
# learned about before -- if the result of the block is negative, the element on the left is 
# "smaller" than the element on the right. 0 means they are equal.
# A positive result means the left element is greater. Use this to sort your array.


def bubble_sort_by(word_array)
	length_swap = true # standard "true" variable that's required outside the while loop

	while length_swap do
		
		length_swap = false # loop initiation
		
		(0...word_array.length - 1).each do |i|
			if yield(word_array[i], word_array[i+1]) < 0
			word_array[i], word_array[i+1] = word_array[i+1], word_array[i]
			length_swap = true
			end
		end
		puts word_array.to_s	# display bubble sorting progress
	end

end

 bubble_sort_by(["hi","hello","hey"]) do |left,right|
	right.length - left.length
end
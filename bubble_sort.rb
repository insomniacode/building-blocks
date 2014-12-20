# Build a method #bubble_sort that takes an array and returns a sorted array. 
# It must use the bubble sort methodology 
# (using #sort would be pretty pointless, wouldn't it?).

def bubble_sort
	 n = length(A)
   repeat 
     swapped = false
     for i = 1 to n-1 inclusive do
       /* if this pair is out of order */
       if A[i-1] > A[i] then
         /* swap them and remember something changed */
         swap( A[i-1], A[i] )
         swapped = true
       end if
     end for
   until not swapped	
end

bubble_sort([4,3,78,2,0,2]) # => [0,2,2,3,4,78]


# Now create a similar method called #bubble_sort_by which sorts an array but accepts a block.
# The block should take two arguments which represent the two elements currently being compared. 
# Expect that the block's return will be similar to the spaceship operator you 
# learned about before -- if the result of the block is negative, the element on the left is 
# "smaller" than the element on the right. 0 means they are equal.
# A positive result means the left element is greater. Use this to sort your array.


def bubble_sort_by
	
end

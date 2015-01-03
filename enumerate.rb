module Enumerable
	
	def my_each # ran off with this code for here (http://www.eriktrautman.com/posts/ruby-explained-blocks-procs-and-lambdas-aka-closures) in order to get started
		i = 0
		  while i < self.size
		    yield(self[i])  
		    i+=1      
		  end
		self
  end

  def my_each_with_index
		i = 0
	  while i < self.size
			   yield(self[i], i)
			   i += 1
    end
  end

 	def my_select
    placeholder = []
    self.my_each {|i| placeholder << i if yield(i)}
  	placeholder
 	end

 	def my_all?
		self.length
  	
 	end

 	def my_any?
		  self.my_each { |a| return true if yield(a)}
		  false  	
 	end

 	def my_none?
	  self.my_all {|a| !yield(a)}  	
 	end

 	def my_map
  	
 	end

 	def my_inject
  	
 	end
end

test_array = [30, 4, 23, 666, 54]

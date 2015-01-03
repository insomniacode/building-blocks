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

  	end

  	def my_select
  	
  	end

  	def my_all?
  	
  	end

  	def my_any?
  	
  	end

  	def my_none?
  	
  	end

  	def my_map
  	
  	end

  	def my_inject
  	
  	end
end

my
# Implement a method #substrings that takes a word 
# as the first argument and then an array of valid substrings (your dictionary) 
# as the second argument. It should return a hash listing each substring 
# (case insensitive) that was found in the original string
# and how many times it was found.

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(phrase, dictionary)
	
	phrase.downcase!
	counter = {}
	
	dictionary.each do |word|
		frequency = phrase.scan(word).length
		counter[word] = frequency unless frequency < 1
	end
	counter
end

# final results
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
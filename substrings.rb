
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)
	substrings_in_dictionary = Hash.new(0)

	temp = ""
	letters = word.split("")


	letters.each_with_index do |a,i|
		
		letters.each_with_index do |b, t|

		temp = letters[i..t].join("")	
			if dictionary.include? temp.downcase
				substrings_in_dictionary[temp] += 1
			end
		end
	end

	return substrings_in_dictionary
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)

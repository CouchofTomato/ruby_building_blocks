def substrings(words, dictionary)
	words_array = words.downcase.split(" ")
	frequencies = Hash.new(0)
	words_array.each do |word|
		dictionary.each do |dic_word|
			if word =~ /#{Regexp.quote(dic_word)}/
				frequencies[dic_word] += 1
			end
		end
	end
	frequencies = frequencies.sort_by { |a, b| b }
	frequencies.reverse!
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary).to_s
puts substrings("Howdy partner, sit down! How's it going?", dictionary).to_s
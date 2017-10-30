class Book
	attr_reader :title

	def title=(book)
	  lowercase = ["and", "in", "the", "of", "an", "a"]
	  
	 	array = book.capitalize.split(" ")
	 	answer = []
	 	  array.each do |word|
	 	    if lowercase.include?(word)
	 	      word = word
	 	      answer.push(word)
	 	    else
	 	     word = word.capitalize
	 	    answer.push(word)
	 	  end
	 	  end
	 	  @title = answer.join(" ")
	 end
end

book = Book.new.title = "inferno"




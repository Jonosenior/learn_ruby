def first_to_last(string)
	firstletter = string.slice(0)
	string.slice!(0)
	string = string + firstletter
end

def translate(string)

	array = string.split(" ")
	answer = []
	puts array
	array.each do |string|
	  vowels = ["a", "e", "i", "o", "u"]

	  if vowels.include?(string[0])
	  string = string[0] + string
	  first_to_last(string)

	  else
	    while !(vowels.include?(string[0]))
	      string = first_to_last(string)
	    end

	    if (string[0] == "u") && (string[-1] == "q")
	      string = first_to_last(string)
	    end
	  end

  answer.push(string + "ay")
  end
return answer.join(" ")

end

=begin
translate_this = gets.chomp
puts translate(translate_this)
=end

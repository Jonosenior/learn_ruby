#write your code here
def echo(string)
	return string
end

def shout(string)
	return string.upcase
end

def repeat (string, number = 2)
	return [string] * number * ' '
end

def start_of_word(string, number)
	return string[0...number]
end

def first_word(string)
	answer = string.split(" ")
	return answer[0]
end

def titleize(string)
	array = string.split(" ")
	littlewords = ["and", "of", "the", "in", "to", "over", "an", "a"]
	array.each do |element|
	  if (element == array[0]) ||  (!(littlewords.include?(element)))
	      element.capitalize!
		end
	end
	answer = array.join(" ")
	return answer
end
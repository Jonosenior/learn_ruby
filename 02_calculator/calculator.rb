#write your code here
def add (num1, num2)
	return num1 + num2
end

def subtract (num1, num2)
	return num1 - num2
end

def sum (array)
	if array.length == 0
		return 0
	end
	answer = 0
	i = 0
	while i < array.length
		answer = answer + array[i]
	end
	return answer



end
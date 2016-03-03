# Convert a sentence into Pig Latin
## (work in progress)

def igpay_atinlay(sentence)

	arr = sentence.split(" ")
	result = ""

	i = 0
	while i < arr.count

		result << arr[i] + " "

		i+=1
	end

	p result

end

igpay_atinlay("This sentence has been converted into Pig Latin")
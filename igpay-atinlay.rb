# Convert a sentence into Pig Latin
def igpay_atinlay(string)
  vowels = %w{ a e i o u }
  result = []
  string.downcase.split(" ").each do |word|
    if vowels.include?(word[0])
      result << word + "ay"
    else
      chars_to_move = ""
      vowel_found = false
      until vowel_found
        if !vowels.include?(word[0])
          chars_to_move += word[0]
          word[0] = ""
        elsif word[0] == "u" && chars_to_move[-1] == "q"
          chars_to_move += word[0]
          word[0] = ""
        else
          vowel_found = true
        end
      end
      result << word + chars_to_move + "ay"
    end
  end
  result.join(" ")
end

p igpay_atinlay("This sentence has been converted into Pig Latin")
p igpay_atinlay("I am sleepy")
p igpay_atinlay("Goodnight")

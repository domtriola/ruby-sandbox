# Convert a sentence into Pig Latin
def to_pig_latin(word)
  was_capitalized = word == word.capitalize ? true : false
  letters = word.downcase[/\w+/]
  punctuation = word.gsub(/\w+/, "")

  first = letters.slice!(/\b\w*qu|\b[^aeiou]+/)
  letters.capitalize! if was_capitalized
  first ? letters + first + "ay" + punctuation : letters + "way" + punctuation
end

def translate(string)
  string.split(" ").map { |word| to_pig_latin(word) }.join(" ")
end

p translate("This sentence has been converted into Pig Latin")
p translate("I am sleepy")
p translate("Goodnight")
p translate("tst")
p translate("testing... for punctuation, now?")

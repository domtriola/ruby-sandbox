# Sort an array of names by last name using bubble sort
def sort_by_last_name(array)
  result = []
  array.each do |name|
    result << name.split(" ")
  end
  no_swap = false
  until no_swap
    result.each_with_index do |name, index|
      no_swap = true
      if result[index+1] && name[1] > result[index+1][1]
        result[index], result[index+1] = result[index+1], result[index]
        no_swap = false
      end
    end
  end
  result.map {|pair| pair = pair.join(" ")}
end

p sort_by_last_name(["Arthur Dent", "Ford Prefect", "Zaphod Beeblebrox", "Sperm Whale", "Deep Thought"])
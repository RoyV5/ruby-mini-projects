def substrings(string, dictionary) 
  string = string.downcase
  count = string.split(' ').reduce(Hash.new(0)) do |object, word|
    dictionary.each {|element| object[element] += 1 if word.include?(element)}
    object
  end
  return count
end

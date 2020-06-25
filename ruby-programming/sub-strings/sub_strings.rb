dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def find_substrings(word_list, dictionary)
  matches = {}
  word_list.each do |word|
    dictionary.each do |contains|
      if word.include?(contains) && matches.include?(contains)
        matches[contains] += 1
      elsif word.include?(contains)
        matches[contains] = 1
      end
    end
  end
  return matches
end

print("Enter string: ")
word_list = gets.gsub(/[^A-Za-z\s]/i, ' ').downcase.split

print(find_substrings(word_list, dictionary))
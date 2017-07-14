# Write a method that takes a string and returns a hash
# whose keys are all the downcased words in the string,
# and values are the number of times these words were seen.
#
# No punctuation will appear in the strings.
#
# Example:
# word_count "The dog and the cat" # => {"the" => 2, "dog" => 1, "and" => 1, "cat" => 1}


# take in string
# split into different words (array?)
# iterate through the array
# add downcased words to array
# use counter to count number of times word has been added?
# assign counter value as value?


def word_count(string)
  counts = Hash.new(0) # Create empty hash, default value 0
  wordarr = string.split.to_a.each {|word| word.downcase!} # Split string, then convert to array, then iterate over it by making each word downcase
  wordarr.each { |name| counts[name] += 1 } # Iterate through words,
  counts
end


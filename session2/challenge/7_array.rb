# Given a sentence, return an array containing every other word.
# Punctuation is not part of the word unless it is a contraction.
# In order to not have to write an actual language parser, there won't be any punctuation too complex.
# There will be no "'" that is not part of a contraction.
# Assume each of these characters are not to be considered: ! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |
# 
# Examples
# alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
# alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
# alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]



# Take in string
#


def alternate_words(string)

# Old attempts to remove some - but not all - punctuation from string before iterating through it
 # substring = string.gsub(/([!@#$%^&*()-=_+|;:",.<>?])/, '').split.map.to_a
 # substring = string.split.map.to_a


  finalarray = []
  '!@$#%^&*()-=_+[]:;,./<>?\\|'.split(//).each do |char| # Taken from solution due to above attempts not excluding " ' " from filter search
    string = string.gsub(char, ' ')
  end

  string.split.each_with_index do |word, index| # with_index used instead of counter method (i += 1) to cycle through even/odd numbers
    finalarray << word if index.even?
  end
  finalarray
end


 print alternate_words("Lo'rem ip'sum dolor sit amet.")
 #
 # puts alternate_words("Eleme.,.ntary, my de.,.ar Wat,.son!")

print alternate_words "Would a dating service on the net be frowned upon . . . ? I hope not. But even if it is, don’t let that stop you from notifying me via net mail if you start one."
print alternate_words "If you want to accomplish something in the world, idealism is not enough--you need to choose a method that works to achieve the goal. In other words, you need to be pragmatic." # => ["If", "want", "accomplish", "in", "world", "is", "enough", "need", "choose", "method", "works", "achieve", "goal", "other", "you", "to", "pragmatic"]

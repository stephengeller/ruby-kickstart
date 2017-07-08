# Write a method named prime_chars? which takes array of strings
# and returns true if the sum of the characters is prime. 
# 
# Remember that a number is prime if the only integers that can divide it with no remainder are 1 and itself. 
# 
# Examples of length three
# prime_chars? ['abc']            # => true
# prime_chars? ['a', 'bc']        # => true
# prime_chars? ['ab', 'c']        # => true
# prime_chars? ['a', 'b', 'c']    # => true
# 
# Examples of length four
# prime_chars? ['abcd']           # => false
# prime_chars? ['ab', 'cd']       # => false
# prime_chars? ['a', 'bcd']       # => false
# prime_chars? ['a', 'b', 'cd']   # => false


def prime_chars?(arrayofstrings)
  length = 0

  arrayofstrings.each do |string|
    break if string.length == 0
    string.length > 1? length += string.length : length += 1
  end

  length.times do |number|
    puts "Number of items in array of strings = #{length}" # test
    divnum = number + 2
    puts "number being iterated is #{divnum}" # test
    if (length % divnum) == 0
      return false
      break
    else
      return true
    end
  end

  return false if arrayofstrings == [] || (length  < 2)
end


puts "\n4\n"
puts prime_chars? ['a', 'b', 'cd']
puts "\n3\n"
puts prime_chars? ['a', 'b', 'c', 'a', 'b', 'c', 'd']
puts "\nempty \n"
puts prime_chars? []
puts "\n''\n"
puts prime_chars? ['']
puts "\n'a' \n"
puts prime_chars? ['a']


# divide a number by every number up until itself
# if any of those divisions return no remainder, then it isn't prime
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

 # old method for getting length of string is below, before looking at solution
  # arrayofstrings.each do |string|
  #   # puts "#{string.length} is the length of the string here!"
  #   break if string.length == 0
  #   string.length > 1? length += string.length : length += 1
  # end

  length = arrayofstrings.join.to_s.length

  2.upto length do |number|
    if length < 2
      return false
      break
    end
    divnum = number + 1
    puts "checking if #{length} is divisible by #{number}. Number var is #{number}" # test
    if length == number
      return true
      break
    end
    (length % number) == 0? (return false) : (return true)
  end

  return false if arrayofstrings == [] || (length  < 2)
end


puts "\n4\n"
puts prime_chars? ['a', 'b', 'cd']
puts "\n11\n"
puts prime_chars? ['a', 'b', 'c', 'adc', 'bsd', 'c', 'd']
puts "\nempty \n"
puts prime_chars? []
puts "\n''\n"
puts prime_chars? ['']
puts "\n'a' \n"
puts prime_chars? ['a']
puts "\n'ab' \n"
puts prime_chars? ['ab']
puts "\n'abc' \n"
puts prime_chars? ['abc']


# divide a number by every number up until itself
# if any of those divisions return no remainder, then it isn't prime
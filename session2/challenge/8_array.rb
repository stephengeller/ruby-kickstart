# Given an array of elements, return true if any element shows up three times in a row
# 
#Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false




def got_three?(threes)


# Old method ideas, before looking at solution and researching .each_cons method

  # once = []
  # twiceinarow = []
  # thrice = []
  # previouschar = ""
  #
  #
  # threes.each_with_index do |element, index|
  #   previouschar = threes[index-1] while index > 1
  #   if (twiceinarow.include? element) && (previouschar == element)
  #     return true
  #   elsif (once.include? element) && (previouschar == element)
  #     twiceinarow << element
  #   elsif !(once.include? element)
  #     once << element
  #   end
  # end


  threes.each_cons 3 do |a, b, c|
    return true if a == b && b == c
  end
  return false
end





# Scan through elements
# Check if element already exists
# if so, add to second array
# if exists in secondarray, return true and break

# if array 1 doesn't have it in, put it in and go to the next one
# if array 1 does have it in, put it in array 2 and go to the next one
# if array 1 and 2 both have them, return true

#
 puts got_three? [1, 2, 2, 2, 3]  # => true
 puts got_three? ['a', 'a', 'b']  # => false
  puts got_three? [1, 2, 1, 1] # =>
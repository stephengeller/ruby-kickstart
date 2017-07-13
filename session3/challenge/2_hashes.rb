# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}



def staircase(nonnegativenumber)
  hash = {}                                       # Create empty hash
  1.upto nonnegativenumber do |i|                 # from 1 to final number
      next if i.even?                             # Skips even numbers
      all = Array.new(i) {|i| i+1}                # Puts all numbers into new array, starts at 0 so need to add 1
    evens = all.select {|e| e.even?}              # Iterates through each value, and only outputs even numbers
    hash[i] = evens                               # Assigns the value of the key i to be the evens
  end
  hash                                            # Output hash
end



puts staircase 5

#puts staircase 10


# 43319 - venue ref number
# '1530' 4353 9310 3068 8677

# 846689

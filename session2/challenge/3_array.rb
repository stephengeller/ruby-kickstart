# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    str = '' # create empty string
    counter = 1 # create a counter with odd value
    each_char do |char| # iterate through characters in string
      counter += 1 # add to counter to alternate between odd / even (ie a , b)
      if counter.even? # conditional add to string
        str << char # push character to string
      end
    end
    str
  end
end

#       Steps:
# Create an empty array
# Iterate through string
# Count through each string number
# Add to array if second number (a, b) or counter method

"".every_other_char
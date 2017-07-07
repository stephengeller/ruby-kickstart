# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    arr = ''
    counter = 1
    each_char do |char|
      counter += 1
      if counter.even?
        arr << char
      end
    end
    arr
  end
end


# Create an empty array
# Iterate through string
# Count through each string number
# Add to array if second number (a, b) or counter method

"".every_other_char
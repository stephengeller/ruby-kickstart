# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
# 
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  arr = []
  while inputnumber = gets # While input comes in, keep adding to array
    break if inputnumber == "\n" # Break if 'enter' is pressed
      inputnumber.split.map do |integer| # Split input based on empty space between inputs
      arr << integer.to_i # Add integer to array in integer format
      end
   #print arr
  end

  # calculations
  puts arr[0] + arr[1]
  puts arr[0] - arr[1]
  puts arr[0] * arr[1]
end


# Use arrays
#sum_difference_product
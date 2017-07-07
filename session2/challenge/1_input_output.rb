# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
# 
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  arr = []
  while inputnumber = gets
    break if inputnumber == "\n"
      inputnumber.split.map do |integer|
      arr << integer.to_i
      end
   #print arr
  end

  puts arr[0] + arr[1]
  puts arr[0] - arr[1]
  puts arr[0] * arr[1]




  # your code goes here
  # input1 = gets.to_i
  # sum = input1 + input2
  # difference = input1 - input2
  # product = input1*input2
  # puts sum.to_s
  # puts difference.to_s
  # puts product.to_s
end


# Use arrays, do methods

#sum_difference_product
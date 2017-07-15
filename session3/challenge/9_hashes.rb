# Write a function which takes two arrays, a, and b
# it should then find the elements that are in both (union)
#
# This is the same as [1,2,3] & [1,2,4]
# but we don't want to use the builtin method
# instead, implement your own by creating a hash table of elements from the first set
# and checking it against the elements from the second set
#
# the keys will be the elements in the arrays
# each value will be a two element array, where the first index is true if the
# key is in a, and the second is true if the key is in b
# if an index is not true, it should be nil
#
# return the hash, and the array of elements in both sets (it should be sorted)
# (do not worry about the order of the hash, remember, on 1.8, hashes have no ordering)
#
# hints:
#   you can set up default behaviour for a hash by passing a block, see cheatsheet (essentially a lazy initialization)
#   you can get an array of keys from a hash with the keys method
#
# examples:
#
# shared [1,2,3], [1,2,4]            # => [{1=>[true, true], 2=>[true, true], 3=>[true, nil], 4=>[nil, true]}, [1, 2]]
# shared %w(a b c d), %w(aa b cc d)  # => [{"a"=>[true, nil], "b"=>[true, true], "c"=>[true, nil], "d"=>[true, true], "aa"=>[nil, true], "cc"=>[nil, true]}, ["b", "d"]]
# shared [], [1,2]                   # => [{1=>[nil, true], 2=>[nil, true]}, []]
# shared [1,2], []                   # => [{1=>[true, nil], 2=>[true, nil]}, []]
# shared [], []                      # => [{}, []]
# shared [1,2,:c], ['a','b',:c]      # => [{1=>[true, nil], 2=>[true, nil], :c=>[true, true], "a"=>[nil, true], "b"=>[nil, true]}, [:c]]
# shared [1,2,3], [3,2,1]            # => [{1=>[true, true], 2=>[true, true], 3=>[true, true]}, [1, 2, 3]]



# Take in array
# Iterate through array, and put each value into hash table

def shared(array_1, array_2)
  to_return = []
  shared_nums = []
  hash1 = array_to_hash array_1
  hash2 = array_to_hash array_2
  all_nums = Hash.new
  numbers_to_check = array_1
  array_2.each {|n| numbers_to_check << n unless array_1.include? n}

  # So now we have a list of all numbers (numbers_to_check), and a function to put the numbers that are present in both arrays

  numbers_to_check.each do |number|
    if hash1.include? number then all_nums[number] = [true] else all_nums[number] = [nil] end   # Create a key/value for all_nums, adding either true or nil in array format
    if hash2.include? number then all_nums[number] << true  else all_nums[number] << nil  end   # Appends a second value to each key, based on their presence
  end

  hash1.each {|key, value| shared_nums << key if hash2.include?(key)}                                # Creates an array of the numbers that both arrays share, to be later added to final array

  to_return << all_nums << shared_nums                                                               # Adds the hash (with true/nil values) and shared numbers in correct order to final array
  to_return
end

def array_to_hash(array)
  hash = Hash.new(0)
  array.each_with_index {|number, index| hash[number] = index}
  hash
end


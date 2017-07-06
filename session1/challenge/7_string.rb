# given a string, return the character after every letter "r"
# 
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  counter = 0
  newstring = ""
  string.each_char do |letter|
    if counter >= 1
      newstring << letter
    end
    if (letter == "r") || (letter == "R")
      counter = 1
    else
      counter = 0
    end

  end
  newstring
end
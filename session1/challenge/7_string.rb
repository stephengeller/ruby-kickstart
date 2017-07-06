# given a string, return the character after every letter "r"
# 
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  counter = 0
  string.each do |letter|
    if counter == 1
      if letter != "r"
        newstring << letter
      end
    end

    if letter == "r"
      counter == 1
    else
      counter == 0
    end
  end
end

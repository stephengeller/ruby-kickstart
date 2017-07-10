# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method 
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.



class BeerSong

  def initialize(bottles)
    if bottles > 99
      bottles = 99
    elsif bottles < 0
      bottles = 0
    end
    self.bottles = bottles
  end

 attr_accessor :bottles

  def setbeers(numberofbottles)
    if numberofbottles > 100
      #{plural(number)} = 99
    elsif numberofbottles < 0
      #{plural(number)} = 0
    end
    #{plural(number)}
  end

  def numberstowords(n)
    #n = bottles
    lowwords = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    bigwords = ["zero", "Ten", "Twenty", "Thirty", "Fourty", "Fivety", "Sixety", "Seventy", "Eighty", "Ninety"]
    weirdnums = [11,12,13,14,15,16,17,18,19]
    fullword = []


    looping = true

    while looping
      if weirdnums.include? n
        fullword = "Eleven" if n == 11
        fullword = "Twelve" if n == 12
        fullword = "Thirteen" if n == 13
        fullword = "Fourteen" if n == 14
        fullword = "Fifteen" if n == 15
        fullword = "Sixteen" if n == 16
        fullword = "Seventeen" if n == 17
        fullword = "Eighteen" if n == 18
        fullword = "Nineteen" if n == 19
      elsif n.to_s.length == 1
        word = lowwords[n.to_i]
        word.to_s.capitalize!
        return word
      else
        n.to_s.chars.map(&:to_i).each_with_index do |num, index|
          if n % 10 == 0
            fullword << bigwords[num]
            break
          elsif (index+1).to_i.odd?
            fullword << bigwords[num]
          else
            fullword << "-#{lowwords[num]}" unless n == 10
          end
        end
        fullword = fullword.join.to_s if fullword.class == Array
      end
      break
    end
    fullword
  end

  def plural(n)
    if n > 1 || n == 0
      return "bottles"
    else
      return "bottle"
    end
  end

  def print_song
    bottles.downto 1 do |i|
      print_stanza i
    end
  end

  def print_stanza(number)
      puts "#{numberstowords(number)} #{plural(number)} of beer on the wall,"
      puts "#{numberstowords(number)} #{plural(number)} of beer,"
      puts "Take one down, pass it around,"
      puts "#{numberstowords(number-1)} #{plural(number-1)} of beer on the wall."
   #   puts "...\n" if number > 1
  end

end

newsong = BeerSong.new(99)

newsong.print_song
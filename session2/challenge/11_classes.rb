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



class BeerSongNew

  def initialize(bottles)
    if bottles > 99
      beers = 99
    elsif bottles < 0
      beers = 0
    end
    self.beers = beers
  end

 attr_accessor :bottles

  def setbeers(numberofbottles)
    if numberofbottles > 100
      bottles = 99
    elsif numberofbottles < 0
      bottles = 0
    end
    bottles
  end

  def numberstowords(n)
    lowwords = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    bigwords = ["zero", "Ten", "Twenty", "Thirty", "Fourty", "Fivety", "Sixety", "Seventy", "Eighty", "Ninety"]
    fullword = []


    looping = true

    while looping
      fullword = "Eleven"  && looping = false if n == 11
      fullword = "Twelve" if n == 12
      fullword = "Thirteen" if n == 13
      fullword = "Fourteen" if n == 14
      fullword = "Fifteen" if n == 15
      fullword = "Sixteen" if n == 16
      fullword = "Seventeen" if n == 17
      fullword = "Eighteen" if n == 18
      fullword = "Nineteen" if n == 19
      if n.to_s.length == 1
        word = lowwords[n.to_i]
        puts word.to_s.capitalize!
      else
        n.to_s.chars.map(&:to_i).each_with_index do |num, index|
          if (index+1).to_i.odd?
            fullword << bigwords[num]
          else
            fullword << "-#{lowwords[num]}" unless n == 10
          end
        end
        fullword = fullword.join.to_s if fullword.class == Array
      end
      break
    end
    puts fullword
  end

  def print_song
    puts "#{printnum} bottles of beer on the wall,
           #{printnum} bottles of beer,
           Take one down, pass it around,
           #{printnum-1} bottles of beer on the wall."
  end

  def printnum(number)
    if number < 10
      finalnum = "#{numberstowords(number.to_s.capitalize!)}"
      return finalnum.to_s
    else
      finalnum = "#{numberstowords(number.to_s.capitalize!)}-#{}"
      return finalnum
    end
  end


end

new = BeerSongNew.new(1000)

puts new.bottles

puts new.numberstowords(7)

puts new.printnum(3)

puts new.print_song
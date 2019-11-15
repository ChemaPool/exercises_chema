require 'json'
require 'stringio'

def birthday(squares_of_chocolate, day, month)
  ways_can_divide = 0
  
  (0..squares_of_chocolate.length - month).each do |square|
    ways_can_divide += 1 if (squares_of_chocolate[square...square + month].inject(:+) == day)
  end

  ways_can_divide
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

squares_of_chocolate = gets.rstrip.split.map(&:to_i)

dm = gets.rstrip.split

day = dm[0].to_i

month = dm[1].to_i

result = birthday squares_of_chocolate, day, month

fptr.write result
fptr.write "\n"

fptr.close()

#!/bin/ruby

require 'json'
require 'stringio'

# Complete the plusMinus function below.
def plusMinus(arr)
  numbers_positives = 0
  numbers_negavites = 0
  numbers_zero = 0
  
  arr.each do |number|
    next numbers_positives += 1 if number.positive?
    next numbers_negavites += 1 if number.negative?
    numbers_zero += 1
  end
  
  puts numbers_positives.fdiv(arr.size) 
  puts numbers_negavites.fdiv(arr.size) 
  puts numbers_zero.fdiv(arr.size)
end

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

plusMinus arr

#!/bin/ruby

require 'json'
require 'stringio'

# Complete the plusMinus function below.
def plusMinus(arr)
  numbers_positives = []
  numbers_negavites = []
  numbers_zero = []
  
  arr.each do |number|
    if number.positive?
      numbers_positives.push(number)
    elsif number.negative?
      numbers_negavites.push(number)
    else
      numbers_zero.push(number)
    end
  end
  
  p (numbers_positives.size).fdiv(arr.size) 
  p (numbers_negavites.size).fdiv(arr.size) 
  p (numbers_zero.size).fdiv(arr.size)
end

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

plusMinus arr

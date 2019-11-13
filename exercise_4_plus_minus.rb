#!/bin/ruby

require 'json'
require 'stringio'

# Complete the plusMinus function below.
def plusMinus(numbers, constant)
  p (numbers.count { |k| k > 0 }.fdiv(constant)).round(6)
  p (numbers.count { |k| k < 0 }.fdiv(constant)).round(6)
  p (numbers.count { |k| k == 0 }.fdiv(constant)).round(6)
end

constant = gets.to_i

numbers = gets.rstrip.split(' ').map(&:to_i)

plusMinus(numbers, constant)

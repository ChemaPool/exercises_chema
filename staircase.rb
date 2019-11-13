#!/bin/ruby

require 'json'
require 'stringio'

# Complete the staircase function below.
def staircase(n)
  (1..n).step do |number_figure|
    puts "#{' ' * (n - number_figure)}" "#{ ('#' * number_figure)}"
  end
end

n = gets.to_i

staircase n

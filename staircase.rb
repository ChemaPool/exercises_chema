#!/bin/ruby

require 'json'
require 'stringio'

# Complete the staircase function below.
def staircase(n)
  (1..n).step(1) do |number_figure|
    figure = " " * (n - number_figure) + ("#" * number_figure)
    puts figure
  end
end

n = gets.to_i

staircase n

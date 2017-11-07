#!/bin/ruby

t = gets.strip.to_i

t.times do
    n,k = gets.strip.split(' ')
    n = n.to_i
    k = k.to_i

    puts ((k-1) | k) <= n ? k - 1 : k - 2
end

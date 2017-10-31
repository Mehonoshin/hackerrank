#!/bin/ruby

n = gets.strip.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)
# Write Your Code Here

num = 0
0.upto(n) do |i|
    0.upto(n - 2) do |j|
        if (a[j] > a[j + 1])
            tmp = a[j]
            a[j] = a[j + 1]
            a[j + 1] = tmp
            num += 1
        end
    end
end

puts "Array is sorted in #{num} swaps."
puts "First Element: #{a.first}"
puts "Last Element: #{a.last}"

#!/bin/ruby

N = gets.strip.to_i
names = []
for a0 in (0..N-1)
    firstName,emailID = gets.strip.split(' ')
    names << firstName if emailID.end_with?('@gmail.com')
end

names.sort.each do |name|
    puts name
end

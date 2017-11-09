# Enter your code here. Read input from STDIN. Print output to STDOUT
l1, l2 = gets.split(' ').map(&:to_f)

puts 160 + 40 * (l1 + l1**2)
puts 128 + 40 * (l2 + l2**2)

a, b = gets.split(' ').map(&:to_i)
n = gets.to_i

p = a / b.to_f
q = 1 - p

result = (q ** (n - 1)) * p

puts result.round(3)

a, b = gets.split(' ').map(&:to_i)
n = gets.to_i

p = a / b.to_f
q = 1 - p

result = 1 - q ** n

puts result.round(3)

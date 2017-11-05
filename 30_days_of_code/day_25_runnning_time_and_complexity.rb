# Enter your code here. Read input from STDIN. Print output to STDOUT

def is_prime?(num)
  return false if num <= 1
  Math.sqrt(num).to_i.downto(2).each {|i| return false if num % i == 0}
  true
end

t = gets.to_i

t.times do
   n = gets.to_i
   res = is_prime?(n) ? 'Prime' : 'Not prime'
   puts res
end

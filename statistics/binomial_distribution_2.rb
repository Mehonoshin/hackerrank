bad, batch = gets.split(' ').map(&:to_f)

p = bad / 100.0
q = (1 - p).to_f

N = 10
T = 2

def fact(n)
  return 1 if n == 0 else n*fact(n-1)
end

def nx(n, x)
    fact(n) / (fact(x) * fact(n - x)).to_f
end

def b(x, n, p)
    nx(n, x) * (p ** x) * ((1 - p) ** (n - x)).to_f
end

def exp(s, f, n, p)
    sum = 0.0
    s.upto(f) do |r|
      sum += b(r, n, p).to_f
    end
    sum
end

first = exp(0, T, N, p)
second = exp(T, N, N, p)

puts first.round(3)
puts second.round(3)

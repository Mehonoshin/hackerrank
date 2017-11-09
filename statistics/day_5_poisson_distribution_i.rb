# Enter your code here. Read input from STDIN. Print output to STDOUT
l = gets.to_f
k = gets.to_f
e = 2.71828

def fact(n)
    return 1 if n == 1
    n * fact(n - 1)
end

p = (l ** k) * (e ** (-1*l)) / fact(k)
puts p.round(3)

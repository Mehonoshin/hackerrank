t = 5
n = 6
cancelled = true

def students(n, cancelled)
    k = n - 3
    res = if cancelled
        Array.new(k, 1)
    else
        Array.new(k, -1)
    end
    [-1, 0, 1] + res
end

puts t
t.times do |ti|
    puts "#{n} #{n - 3}"
    puts students(n, cancelled).join(' ')

    n += 1
    cancelled = !cancelled
end

# Enter your code here. Read input from STDIN. Print output to STDOUT
r_d, r_m, r_y = gets.split(' ').map(&:to_i)
e_d, e_m, e_y = gets.split(' ').map(&:to_i)

class LibDate
    attr_reader :d, :m, :y

    def initialize(d, m, y)
        @d, @m, @y = d, m, y
    end

    def >=(date)
        (self.d <= date.d && self.m == date.m && self.y == date.y) ||
        (self.m < date.m && self.y == date.y) ||
        (self.y < date.y)
    end

    def eql_month_and_year(date)
        self.m == date.m && self.y == date.y
    end
end

def fine(returned, expected)
    return 0 if returned >= expected

    if (returned.d > expected.d) && returned.eql_month_and_year(expected)
        15 * (returned.d - expected.d)
    elsif (returned.m > expected.m) && (returned.y == expected.y)
        500 * (returned.m - expected.m)
    elsif returned.y > expected.y
        10000
    end
end

returned_date = LibDate.new(r_d, r_m, r_y)
expected_date = LibDate.new(e_d, e_m, e_y)

puts fine(returned_date, expected_date)

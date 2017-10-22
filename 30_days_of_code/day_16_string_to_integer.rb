S = gets.strip

begin
    Integer(S)
rescue ArgumentError
    result = 'Bad String'
end

result ||= S.to_i
puts result

def find_longest_prefix_length str
    size = 0
    (0...str.length / 2).each do |i|
        if str.chars.first(i + 1).join == str.chars.last(i + 1).join
            size = str.chars.first(i + 1).join.length
        end
    end
    size
end

puts find_longest_prefix_length 'abcd'
puts find_longest_prefix_length 'defdjskdlskdlsdef'
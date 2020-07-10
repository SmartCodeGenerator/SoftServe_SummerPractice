def find_biggest_weight_character str
    result = {}
    for character in str.chars
        first_index = 0
        (0...str.length).each do |i|
            if character == str.chars[i]
                first_index = i
                break
            end
        end
        last_index = 0
        (0...str.length).each do |i|
            if character == str.chars[-i - 1]
                last_index = str.length - i - 1
                break
            end
        end
        if !result.keys.include? character
            result[character] = last_index - first_index
        end
    end
    new_keys = result.keys.reject {|e| result[e] < result.values.max}
    new_keys.sort!
    new_keys[0]
end

puts find_biggest_weight_character "tartata"
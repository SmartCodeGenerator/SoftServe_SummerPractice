def check_print str
    counter = 0
    for character in str.chars
        if character.ord < 97 || character.ord > 102
            counter += 1
        end
    end
    "#{counter}/#{str.length}"
end

puts check_print 'aaazbbff'
puts check_print 'fffbb'
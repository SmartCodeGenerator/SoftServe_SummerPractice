def letters_in_row str
    characters = str.chars
    characters.sort!

    c1 = 0
    (1...characters.length).each do |i|
        if characters[i].ord - characters[i - 1].ord == 1
            c1 += 1
        end
    end
    
    if c1 == characters.length - 1
        characters2 = str.chars
        c2 = 0
        (1...characters2.length).each do |i|
            if characters2[i].ord - characters2[i - 1].ord == 1
                c2 += 1
            end
        end
        if c2 > 0
            true
        else
            false
        end
    else
        false
    end
end

puts letters_in_row 'fghi'
puts letters_in_row 'figh'
puts letters_in_row 'fhi'
puts letters_in_row 'fighi'
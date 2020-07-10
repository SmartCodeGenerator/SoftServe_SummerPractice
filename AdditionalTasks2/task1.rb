def count_changes *arr
    counter = 0
    prev_state = arr[0] >= 0 ? true : false
    if arr.length > 1
        (1...arr.length).each do |i|
            new_state = arr[i] >= 0 ? true : false
            if prev_state != new_state
                counter += 1
            end
            prev_state = new_state
        end
    end
    counter
end

puts count_changes(-3, 4, -3, 0, -2)
puts count_changes(3, -2, -3, -9)
puts count_changes(0)
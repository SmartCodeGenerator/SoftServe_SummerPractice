class Mathematics
    def power
        numbers = gets.chomp
        numbers = numbers.split(" ")
        osnova, stepin = numbers[0].to_f, numbers[1].to_f

        puts osnova ** stepin
    end
end
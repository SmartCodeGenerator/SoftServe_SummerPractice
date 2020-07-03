#puts "Enter number of planet:"
#number = gets.chomp.to_i
def get_planet_name(number)
    case number
    when 1 then "Mercury"
    when 2 then "Venera"
    when 3 then "Earth"
    when 4 then "Mars"
    when 5 then "Jupiter"
    when 6 then "Saturn"
    when 7 then "Uran"
    when 8 then "Neptun"
    when 9 then "Pluto"
    else
        "Wrong number"
    end
end

puts get_planet_name ARGV.to_a[0].to_i
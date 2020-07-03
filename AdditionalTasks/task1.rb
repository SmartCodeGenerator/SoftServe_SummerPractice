=begin puts "Введіть номер місяця :
1 - Січень
2 - Лютий
3 - Березень
4 - Квітень
5 - Травень
6 - Червень
7 - Липень
8 - Серпень
9 - Вересень
10 - Жовтень
11 - Листопад
12 - Грудень
 
"

month = gets.chomp
month = month.to_i
=end
def get_quartal(month_number)
    case month_number
    when 1..3 then "1st quartal"
    when 4..6 then "2nd quartal"
    when 7..9 then "3rd quartal"
    when 10..12 then "4th quartal"
    else
        'Incorrect number of month'
    end
end

puts get_quartal ARGV.to_a[0].to_i
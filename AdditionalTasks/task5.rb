=begin puts "Enter 1st number:"
num1 = gets.chomp.to_i
puts "Enter 2nd number:"
num2 = gets.chomp.to_i
puts "Enter 3rd number:"
num3 = gets.chomp.to_i
=end
def get_max_from_ops(num1, num2, num3)
    if num1 >= 1 && num1 <= 10 && num2 >= 1 && num2 <= 10 && num3 >= 1 && num3 <= 10
        results = []

        results << num1 + num2 + num3
        results << num1 * num2 * num3

        results << num1 + num2 * num3
        results << num2 + num1 * num3
        results << num3 + num1 * num2

        results << (num1 + num2) * num3
        results << (num1 + num3) * num2
        results << (num2 + num3) * num1

        max = results[0]
        results.each_index do |i|
            if results[i] > max
                max = results[i]
            end
        end
        max
    else
        "Invalid arguments"
    end
end

args = ARGV.to_a
puts get_max_from_ops(args[0].to_i, args[1].to_i, args[2].to_i)
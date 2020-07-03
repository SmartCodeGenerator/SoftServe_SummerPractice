def function4(arg1, arg2)
    if arg1 != 0 && arg2 != 0 && arg2 != 1
        "#{arg1 * arg2}x^#{arg2 - 1}"
    else
        "Invalid arguments"
    end
end

args = ARGV.to_a
puts function4(args[0].to_i, args[1].to_i)
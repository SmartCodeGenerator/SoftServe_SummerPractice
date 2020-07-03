=begin puts "Enter price per unit:"
price = gets.chomp.to_f
puts "Enter discount(%) per unit:"
discount = gets.chomp.to_i
puts "Enter quantity of units to purchase:"
quantity = gets.chomp.to_i
=end
def get_savings(price, discount_percentage, quantity)
    if price >= 0 && discount_percentage >= 0 && quantity >= 0
        discount_percentage *= 0.01
        total_price = price * quantity
        puts "Total price: #{total_price}"
        price_with_discount = (price - price * discount_percentage) * quantity
        puts "Price with discount: #{price_with_discount}"
        savings = total_price - price_with_discount
        savings
    else
        0
    end
end

args = ARGV.to_a
puts "Saved money: #{get_savings(args[0].to_f, args[1].to_i, args[2].to_i)}"
# З вхідної стрічки виділити всі підрядки, довжиною більше 5 та вивести їх у сортованому вигляді

# Ви маєте дописати логіку сортування масиву зі всіх слів з вхідного речення,
# довжина яких є строго більшою за 5.

class Calculator
  def string_sort input_string

    # вхідний рядок записуватиметься у змінну temp
    temp = input_string

    # temp слід розділити на множину підрядків за пробіл
    words = temp.split(" ")

    # з отриманої множини вибрати лишень ті елементи, довжина яких більша за 5
    result = words.select {|word| word.length > 5}

    # посортувати масив та вивести його
    result.sort!

    # тут його слід вивести
    puts result

  end
end

#Calculator.new.string_sort("Sometimes the hand of fate must be forced")
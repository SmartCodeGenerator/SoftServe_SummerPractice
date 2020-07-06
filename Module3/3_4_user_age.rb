# Написати програму, яка обраховує вік користувача, базуючись на даті народження у певному форматі
# Програма має видавати вік, або видавати "-1" у випадку некоректної вхідної інформації


# Ви маєте дописати частину, де вхідна інформація перевіряється на коректність
# та записує у змінну result очікуване значення - кількість років людини, або -1.

class Calculator
  def console_calculator

      # Остаточний вік користувача програми
      result = 0

      # Вивід інформаційного повідомлення
      puts "Програма обчислить ваш вік"
      puts "Введіть дату свого народження у такому форматі дд-мм-рррр"
      
      # Зчитування даних з консолі
      dob = gets.chomp

      # Формування масиву, внаслідок дії методу split (поділити) класу String
      dob = dob.split "-"

      # Ініціалізації змінних, в яких міститься інформація про рік, місяць та день народження користувача
      dob_year = dob[2]
      dob_month = dob[1]
      dob_day = dob[0]

      # Використання вбудованого об’єкту Time для знаходження поточної дати
      current_time = Time.new

      # Ініціалізації змінних, в яких міститься інформація про рік, місяць та день місяця
      current_year = current_time.year
      current_month = current_time.month
      current_day = current_time.day
      
    	# Алгоритм

      # Перевірка вхідних даних на правильність та обчислення дати народження.
      # Поелементний аналіз базується на порівнянні послідовно років, місяців, днів місяця.

      if dob_year.to_i <= current_year && dob_month.to_i >= 1 && dob_month.to_i <= 12 && dob_day.to_i >= 1 && dob_day.to_i <= 31
        if (dob_month.to_i == 4 || dob_month.to_i == 6 || dob_month.to_i == 9 || dob_month.to_i == 11) && dob_day.to_i > 30
          result = -1
        elsif dob_year.to_i % 4 == 0 && dob_month.to_i > 29
          result = -1
        elsif dob_year.to_i % 4 != 0 && dob_month.to_i > 28
          result = -1
        else
          year_index = 0
          daysForCurrentDate = 0
          
          while year_index <= current_year
            if year_index % 4 == 0
              daysForCurrentDate += 366
            else
              daysForCurrentDate += 365
            end
            year_index += 1
          end

          if current_year % 4 == 0
            case current_month
            when 2 then daysForCurrentDate += 31
            when 3 then daysForCurrentDate += 60
            when 4 then daysForCurrentDate += 91
            when 5 then daysForCurrentDate += 121
            when 6 then daysForCurrentDate += 152
            when 7 then daysForCurrentDate += 182
            when 8 then daysForCurrentDate += 213
            when 9 then daysForCurrentDate += 244
            when 10 then daysForCurrentDate += 274
            when 11 then daysForCurrentDate += 305
            when 12 then daysForCurrentDate += 335
            end
          else
            case current_month
            when 2 then daysForCurrentDate += 31
            when 3 then daysForCurrentDate += 59
            when 4 then daysForCurrentDate += 90
            when 5 then daysForCurrentDate += 120
            when 6 then daysForCurrentDate += 151
            when 7 then daysForCurrentDate += 181
            when 8 then daysForCurrentDate += 212
            when 9 then daysForCurrentDate += 243
            when 10 then daysForCurrentDate += 273
            when 11 then daysForCurrentDate += 304
            when 12 then daysForCurrentDate += 334
            end
          end

          daysForCurrentDate += current_day

          year_index = 0
          daysForBirthdayDate = 0
          
          while year_index <= dob_year.to_i
            if year_index % 4 == 0
              daysForBirthdayDate += 366
            else
              daysForBirthdayDate += 365
            end
            year_index += 1
          end

          if dob_year.to_i % 4 == 0
            case dob_month.to_i
            when 2 then daysForBirthdayDate += 31
            when 3 then daysForBirthdayDate += 60
            when 4 then daysForBirthdayDate += 91
            when 5 then daysForBirthdayDate += 121
            when 6 then daysForBirthdayDate += 152
            when 7 then daysForBirthdayDate += 182
            when 8 then daysForBirthdayDate += 213
            when 9 then daysForBirthdayDate += 244
            when 10 then daysForBirthdayDate += 274
            when 11 then daysForBirthdayDate += 305
            when 12 then daysForBirthdayDate += 335
            end
          else
            case dob_month.to_i
            when 2 then daysForBirthdayDate += 31
            when 3 then daysForBirthdayDate += 59
            when 4 then daysForBirthdayDate += 90
            when 5 then daysForBirthdayDate += 120
            when 6 then daysForBirthdayDate += 151
            when 7 then daysForBirthdayDate += 181
            when 8 then daysForBirthdayDate += 212
            when 9 then daysForBirthdayDate += 243
            when 10 then daysForBirthdayDate += 273
            when 11 then daysForBirthdayDate += 304
            when 12 then daysForBirthdayDate += 334
            end
          end

          daysForBirthdayDate += dob_day.to_i

          differenceInDays = daysForCurrentDate - daysForBirthdayDate

          if current_year % 4 == 0
            while differenceInDays >= 366
              differenceInDays -= 365
              result += 1
              if result % 4 == 0
                differenceInDays -= 1
              end
            end
          else
            while differenceInDays >= 365
              differenceInDays -= 365
              result += 1
              if result % 4 == 0
                differenceInDays -= 1
              end
            end
          end

        end
      else
        result = -1
      end

      puts result;

  end
end

#Calculator.new.console_calculator
﻿# Модуль, який надає функції для роботи з масивом queue будь-якого класу.
# Ці функції моделюють роботи двобічної черги. http://en.wikipedia.org/wiki/Double-ended_queue
# Структура двобічна черга (ще називають декою) має володіти такими методами:
#   + Додавання елемента в кінець черги
#   + Додавання елемента в початок черги
#   + Вибірка останнього елемента
#   + Вибірка першого елемента
#   + Перевірка першого елемента (без видалення з деку)
#   + Перевірка останнього елемента (без видалення з деку)
# 
# Слід врахувати, що тут будуть використовуватися методи роботи з масивами.
# 
# Ви маєте зреалізувати методи нище описаного модулю, який додає
# функціонал двобічної черги до довільного класу, в якому є змінна об’єкту
# @queue (черга).
# 

module DoubleEndedQueue

  # Додавання елемента в початок черги
  def add_first elem
    @queue.unshift(elem)
  end
  
  # Додавання елемента в кінець черги
  def add_last elem
    @queue.push(elem)
  end

  # Вибірка першого елемента.
  # Елемент повертається методом та видаляється з деки.
  def remove_first
    @queue.shift
  end

  # Вибірка останнього елемента
  # Елемент повертається методом та видаляється з деки.
  def remove_last
    @queue.pop
  end

  # Перевірка першого елемента (без видалення з деку)
  def get_first
    @queue.first
  end

  # Перевірка останнього елемента (без видалення з деку)
  def get_last
    @queue.last
  end

  # Метод, який видруковує актуальний стан деки.
  # Цей метод модифікувати не слід.
  def return_deck
    @queue.inspect
  end

end

# Клас, який використовує розроблений нами модуль.
# Модифікувати не слід!
class Resource
  include DoubleEndedQueue

  def initialize arr
    @queue = arr || Array.new
  end
    
end

=begin
res = Resource.new [1,2,3]
res.add_first 0
puts res.return_deck
puts res.remove_first
res.add_last 4
puts res.return_deck
puts res.remove_last
puts res.get_first
puts res.get_last
=end
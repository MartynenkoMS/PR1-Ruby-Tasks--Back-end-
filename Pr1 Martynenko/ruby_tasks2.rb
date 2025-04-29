#Завдання 2:
# Базовий калькулятор

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def multiply(a, b)
  a * b
end

def divide(a, b)
  if b == 0
    "На нуль не можна ділити!"
  else
    a / b.to_f
  end
end

# Запитуємо у користувача вибір операції
puts "Виберіть операцію:"
puts "1. Додавання"
puts "2. Віднімання"
puts "3. Множення"
puts "4. Ділення"

operation = gets.chomp.to_i

# Запитуємо числа для операцій
puts "Введіть перше число:"
num1 = gets.chomp.to_f

puts "Введіть друге число:"
num2 = gets.chomp.to_f

# Виконуємо відповідну операцію
case operation
when 1
  result = add(num1, num2)
  puts "Результат: #{result}"
when 2
  result = subtract(num1, num2)
  puts "Результат: #{result}"
when 3
  result = multiply(num1, num2)
  puts "Результат: #{result}"
when 4
  result = divide(num1, num2)
  puts "Результат: #{result}"
else
  puts "Невірна операція!"
end

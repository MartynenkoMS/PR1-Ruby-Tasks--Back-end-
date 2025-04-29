#Завдання 1:

# Задача 1. Дано цілочисельний масив. Необхідно вивести спочатку його елементи з парними індексами, а потім - з непарними.
data = [1, 2, 3, 4, 5, 6]
result = data.each_with_index.partition { |element, index| index.even? }

puts "Задача 1: #{result.flatten.map { |element, _| element }}"

# Задача 2: Дано цілочисельний масив. Необхідно вивести спочатку його елементи з непарними індексами, а потім - з парними.
data = [1, 2, 3, 4, 5, 6]
result = data.each_with_index.partition { |element, index| index.odd? }

puts "Задача 2: #{result.flatten.map { |element, _| element }}"

# Задача 3: Дано цілочисельний масив. Вивести номер першого з тих його елементів, які задовольняють подвійній нерівності: A[0] < A[i] < A[-1]. Якщо таких елементів немає, то вивести nil.
data = [1, 3, 5, 2, 4]
first_matching_index = data.find_index { |i| data[0] < i && i < data[-1] }

puts "Задача 3: #{first_matching_index.nil? ? '[]' : first_matching_index}"

# Задача 4: Дано цілочисельний масив. Вивести номер першого з тих його елементів, які задовольняють подвійній нерівності: A[0] < A[i] < A[-1]. Якщо таких елементів немає, то вивести [ ].
data = [1, 3, 5, 2, 4]
first_matching_index = data.find_index { |i| data[0] < i && i < data[-1] }

puts "Задача 4: #{first_matching_index.nil? ? '[]' : first_matching_index}"

# Задача 5: Дано цілочисельний масив. Вивести номер останнього з тих його елементів, які задовольняють подвійній нерівності: A[0] < A[i] < A[-1]. Якщо таких елементів немає, то вивести [ ].
data = [1, 3, 5, 2, 4]
last_matching_index = data.reverse.find_index { |i| data[0] < i && i < data[-1] }

puts "Задача 5: #{last_matching_index.nil? ? '[]' : (data.length - 1 - last_matching_index)}"

# Задача 6: Дано цілочисельний масив. Перетворити його, додавши до парних чисел перший елемент. Перший і останній елементи масиву не змінювати.
data = [1, 3, 4, 6, 2]
first_element = data[0]
last_element = data[-1]

transformed_data = data[1..-2].map { |x| x.even? ? x + first_element : x }

transformed_data.unshift(first_element).push(last_element)

puts "Задача 6: #{transformed_data.inspect}"

# Задача 7: Дано цілочисельний масив. Перетворити його, додавши до парних чисел останній елемент. Перший і останній елементи масиву не змінювати.
data = [1, 3, 4, 6, 2]
first_element = data[0]
last_element = data[-1]

transformed_data = data[1..-2].map { |x| x.even? ? x + last_element : x }

transformed_data.unshift(first_element).push(last_element)

puts "Задача 7: #{transformed_data.inspect}"

# Задача 8: Дано цілочисельний масив. Перетворити його, додавши до непарних чисел останній елемент. Перший і останній елементи масиву не змінювати.
data = [1, 3, 4, 6, 2]

first_element = data[0]
last_element = data[-1]

transformed_data = data[1..-2].map { |x| x.odd? ? x + last_element : x }

transformed_data.unshift(first_element).push(last_element)

puts "Задача 8: #{transformed_data.inspect}"

# Задача 9: Дано цілочисельний масив. Перетворити його, додавши до непарних чисел перший елемент. Перший і останній елементи масиву не змінювати.
data = [1, 3, 4, 6, 2]

first_element = data[0]
last_element = data[-1]

transformed_data = data[1..-2].map { |x| x.odd? ? x + first_element : x }

transformed_data.unshift(first_element).push(last_element)

puts "Задача 9: #{transformed_data.inspect}"

# Задача 10: Дано цілочисельний масив. Замінити всі додатні елементи на значення мінімального.
data = [1, 3, -5, 0, -4, 9]

min_value = data.min

transformed_data = data.map { |x| x > 0 ? min_value : x }

puts "Задача 10: #{transformed_data.inspect}"

# Задача 11: Дано цілочисельний масив. Замінити всі додатні елементи на значення максимального.
data = [1, 3, -5, 0, -4, 9]

max_value = data.max

transformed_data = data.map { |x| x > 0 ? max_value : x }

puts "Задача 11: #{transformed_data.inspect}"

# Задача 12: Дано цілочисельний масив. Замінити всі від'ємні елементи на значення мінімального.
data = [1, 3, -5, 0, -4, 9]

min_value = data.min

transformed_data = data.map { |x| x < 0 ? min_value : x }

puts "Задача 12: #{transformed_data.inspect}"

# Задача 13: Дано цілочисельний масив. Замінити всі від'ємні елементи на значення максимального.
data = [1, 3, -5, 0, -4, 9]

max_value = data.max

transformed_data = data.map { |x| x < 0 ? max_value : x }

puts "Задача 13: #{transformed_data.inspect}"

# Задача 14: Дано цілочисельний масив. Здійснити циклічний зсув елементів масиву вліво на одну позицію.
data = [1, 3, 4, 6, 2]

shifted_data = data[1..-1] + [data[0]]

puts "Задача 14: #{shifted_data.inspect}"
# Задача 15: Дано цілочисельний масив. Здійснити циклічний зсув елементів масиву вправо на одну позицію.
data = [1, 3, 4, 6, 2]

shifted_data = [data[-1]] + data[0..-2]

puts "Задача 15: #{shifted_data.inspect}"

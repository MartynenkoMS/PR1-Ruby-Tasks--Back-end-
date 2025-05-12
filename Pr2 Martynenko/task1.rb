# Завдання 1:
# Програма для знаходження найчастіших елементів в масиві

def find_most_frequent_elements(array)
  frequency = Hash.new(0)

  # Підрахунок частоти кожного елемента
  array.each do |num|
    frequency[num] += 1
  end

  # Знаходження максимальної частоти
  max_frequency = frequency.values.max

  # Вибираємо всі елементи, які мають максимальну частоту
  most_frequent = frequency.select { |key, value| value == max_frequency }.keys

  most_frequent
end

# Масиви
arrays = [
  [1, 3, 1, 3, 2, 1],
  [4, 4, 5, 6, 6, 5],
  [7, 7, 7, 8, 8, 8],
  [9, 9, 9, 6, 7, 7],
  [5, 5, 4, 3, 3, 2]
]

arrays.each do |arr|
  result = find_most_frequent_elements(arr)
  puts "Масив: #{arr}"
  puts "Найчастіші елементи: #{result}\n\n"
end

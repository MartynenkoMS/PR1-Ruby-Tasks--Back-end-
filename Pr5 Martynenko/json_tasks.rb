require 'json'

# Зчитуємо вміст файлу
file = File.read('users.json')

# Парсимо JSON в Ruby-об'єкт (масив)
users = JSON.parse(file)

# Для кожного користувача в масиві виводимо ім'я та вік
users.each do |user|
  puts "Name: #{user['name']}, Age: #{user['age']}"
end

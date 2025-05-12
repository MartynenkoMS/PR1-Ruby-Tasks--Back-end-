# Завдання 2
# Програма для перетворення речення на Pig Latin

def pig_latin_word(word)
  # Визначаємо, чи є в кінці розділовий знак
  punctuation = ""
  if word[-1] =~ /[[:punct:]]/
    punctuation = word[-1]
    word = word[0...-1]
  end

  # Якщо слово коротке (1 буква), не змінюємо
  return word + punctuation if word.length <= 1

  # Переносимо першу літеру в кінець і додаємо "ay"
  pig_word = word[1..-1] + word[0] + "ay"

  pig_word + punctuation
end

def pig_latin_sentence(sentence)
  words = sentence.split(" ")
  pig_words = words.map { |word| pig_latin_word(word) }
  pig_words.join(" ")
end

# Приклади
sentences = [
  "Привіт, я Максим!",
  "Я вчусь програмувати на Ruby!",
  "Hello, world!",
  "Hello RUBY!"
]

sentences.each do |s|
  puts "Оригінал: #{s}"
  puts "Pig Latin: #{pig_latin_sentence(s)}\n\n"
end

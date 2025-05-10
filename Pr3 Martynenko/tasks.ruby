# Програма To-Do List на Ruby

tasks = []

def show_menu
  puts "\n1. Add Task"
  puts "2. Show Tasks"
  puts "3. Delete Task"
  puts "4. Exit"
  print "\nChoose an option: "
end

loop do
  show_menu
  choice = gets.chomp.to_i

  case choice
  when 1
    print "Enter new task: "
    task = gets.chomp
    tasks << task
    puts "Task added!"
  when 2
    if tasks.empty?
      puts "No tasks yet."
    else
      puts "\nCurrent tasks:"
      tasks.each_with_index do |task, index|
        puts "#{index + 1}. #{task}"
      end
    end
  when 3
    if tasks.empty?
      puts "No tasks to delete."
    else
      puts "\nCurrent tasks:"
      tasks.each_with_index do |task, index|
        puts "#{index + 1}. #{task}"
      end
      print "Enter the number of the task to delete: "
      num = gets.chomp.to_i
      if num.between?(1, tasks.length)
        removed = tasks.delete_at(num - 1)
        puts "Task '#{removed}' deleted!"
      else
        puts "Invalid task number."
      end
    end
  when 4
    puts "Goodbye!"
    break
  else
    puts "Invalid option. Please choose 1-4."
  end
end

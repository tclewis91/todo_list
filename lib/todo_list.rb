require_relative '../db/setup'
require_relative 'todo'

class TodoList

  def initialize
    @todos = Todo.all
    @save = Todo.save
  end

  def start
    loop do
      system('clear')

      puts "---- TODO::ARB----"

      view_todos

      puts
      puts "What would you like to do?"
      puts "1) Exit 2) Add Todo 3) Mark Todo As Complete"
      print " > "
      action = gets.chomp.to_i
      case action
      when 1 then exit
      when 2 then add_todo
      when 3 then mark_todo
      else
        puts "\a"
        puts "Not a valid choice"
      end
    end
  end

  def view_todos
    @todos.each do |item|
    puts item.entry
  end
end

  def mark_todo
     print "What have you finished?"
    Todo.where(entry: get_input).update_all(completed: true)
  end

  def add_todo
    puts "So, whatcha need todo?"
    puts Todo.create(entry: get_input)
  end

  def get_input
    gets.chomp
  end
end

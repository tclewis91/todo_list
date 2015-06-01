require_relative '../db/setup'
require_relative 'todo'

class TodoList


  def start
    loop do
      @todos = Todo.all
      system('clear')

      puts "---- TODO::----"

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
    puts "#{item.id} #{item.entry} - #{item.completed}"
  end
end

  def mark_todo
    print "What have you finished?"
    Todo.update(get_input, completed: true)
  end

  def add_todo
    puts "So, whatcha need todo?"
    puts Todo.create(entry: get_input)
  end

  def delete_todo
    puts "So, whatcha wanna delete?"
    Todo.delete(get_input)
  end

  def get_input
    gets.chomp
  end
  Todo.new
end

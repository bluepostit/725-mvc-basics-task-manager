# State
#  - nothing
# Behavior
#  - display all tasks
#  - ???
class TasksView
  def list(tasks)
    tasks.each_with_index do |task, index|
      done = task.done? ? '[x]' : '[ ]'
      puts "#{index + 1}. #{done} #{task.name}"
    end
  end

  def ask_user_for(thing)
    puts "Please enter the #{thing}"
    print '> '
    gets.chomp
  end

  def ask_user_for_index
    puts "Please enter the number"
    print '> '
    gets.chomp.to_i - 1
  end
end

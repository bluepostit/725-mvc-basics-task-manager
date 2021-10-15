class Router
  # State
  # - controller
  # Behavior
  # - run
  # - show menu
  # - get user action (choice)
  # - dispatch action

  def initialize(tasks_controller)
    @tasks_controller = tasks_controller
  end

  def run
    loop do
      show_menu
      action = user_action
      dispatch(action)
    end
  end

  private

  def show_menu
    puts ' --- Task Manager ---'
    puts '1. Add a task'
    puts '2. Delete a task'
    puts '3. List your tasks'
    puts '4. Mark a task as done'
  end

  def user_action
    puts 'Please enter your choice'
    print '> '
    gets.chomp.to_i
  end

  def dispatch(action)
    case action
    when 1 then @tasks_controller.add
    when 2 then @tasks_controller.delete
    when 3 then @tasks_controller.list
    when 4 then @tasks_controller.mark_as_done
    else
      puts 'Please try again'
    end
  end
end

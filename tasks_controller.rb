# State
#  - repository
#  - view
# Behavior
#  - list tasks
#  - add a new task
#  - delete a task
#  - mark a task as done
require_relative 'tasks_view'
require_relative 'task'

class TasksController
  def initialize(task_repository)
    @task_repository = task_repository
    @view = TasksView.new
  end

  def list
    # get tasks from repository
    # tell view to display those tasks
    tasks = @task_repository.all
    @view.list(tasks)
  end

  def add
    # get input from user for task name (using view)
    # create a new Task instance
    # add new task to repository
    name = @view.ask_user_for('name')
    task = Task.new(name)
    @task_repository.add(task)
  end

  def delete
    # list all tasks
    # get index from user
    # tell repo to delete task at that index
    list
    index = @view.ask_user_for_index
    @task_repository.delete(index)
  end

  def mark_as_done
    # list all tasks
    # get index from user
    # get task from repo at this index
    # mark it as done
    list
    index = @view.ask_user_for_index
    task = @task_repository.all[index]
    task.mark_as_done!
  end
end

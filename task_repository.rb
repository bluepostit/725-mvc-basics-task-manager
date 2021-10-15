# State
#  - list of tasks
# Behavior
#  - get list of all tasks
#  - add a new task
#  - delete a task

class TaskRepository
  def initialize
    @tasks = []
  end

  def all
    @tasks
  end

  def add(task)
    @tasks << task
  end

  def delete(index)
    @tasks.delete_at(index)
  end
end

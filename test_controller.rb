require_relative 'task'
require_relative 'task_repository'
require_relative 'tasks_controller'

get_milk = Task.new('get milk')
walk_dog = Task.new('walk the dog')
feed_dog = Task.new('feed the dog')

repo = TaskRepository.new
repo.add(get_milk)
repo.add(walk_dog)
repo.add(feed_dog)

controller = TasksController.new(repo)
# controller.list
# puts "----------\n\n"
# controller.add
# controller.list
# puts "----------\n\n"
# controller.delete
# controller.list

puts "----------\n\n"
controller.mark_as_done
controller.list

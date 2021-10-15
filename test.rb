require_relative 'task'
require_relative 'task_repository'
require_relative 'tasks_view'

get_milk = Task.new('get milk')
puts "#{get_milk.name} done? #{get_milk.done?}"
get_milk.mark_as_done!
puts "#{get_milk.name} done? #{get_milk.done?}"

walk_dog = Task.new('walk the dog')

puts "-----------\n\n"

view = TasksView.new

repo = TaskRepository.new
repo.add(get_milk)
repo.add(walk_dog)

view.list(repo.all)
repo.delete(0)
puts "-------------\n\n"
view.list(repo.all)

# State
# - items (array)
# Behavior
# - push (add to end)
# - shift (remove from beginning)

class Queue
  attr_reader :items

  def initialize
    @items = []
  end

  def push(item)
    @items << item
  end

  def shift
    @items.delete_at(0)
  end
end

people = Queue.new
p people.items

people.push('sally')
people.push('george')
people.push('sue')
p people.items

people.shift
p people.items

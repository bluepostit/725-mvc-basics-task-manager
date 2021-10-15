# State
# - plates (array)
# Behavior
# - push (add to end)
# - pop (remove from end)

class Stack
  attr_reader :items

  def initialize
    @items = []
  end

  def push(item)
    @items << item
  end

  def pop
    @items.delete_at(-1)
  end
end

plates = Stack.new
p plates.items

plates.push('side plate')
plates.push('dinner plate')
p plates.items

plates.pop
p plates.items

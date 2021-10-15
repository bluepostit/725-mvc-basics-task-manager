class Vehicle
  attr_accessor :color

  def initialize(color)
    @color = color
    @engine_started = false
  end

  def start_engine!
    @engine_started = true
  end

  def engine_started?
    @engine_started
  end
end

bike = Vehicle.new('green')
puts "My bike is #{bike.color}"

bike.start_engine!
puts "engine started? #{bike.engine_started?}"

bike.color = 'pink'
puts "My bike is #{bike.color}"

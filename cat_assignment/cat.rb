class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def name
    @name
  end

  def preferred_food
    @preferred_food
  end

  def eats_at
    if @meal_time == 0
      "#{@meal_time + 12} AM"
    elsif @meal_time < 12
      "#{@meal_time} AM"
    elsif @meal_time == 12
      "#{@meal_time} PM"
    elsif @meal_time < 23
      "#{@meal_time - 12} PM"
    elsif @meal_time == 23
      "#{@meal_time - 11} PM"
    end
  end

def meow
  "My name is #{name} and I eat #{preferred_food} at #{eats_at}"
end

end

fluffy = Cat.new("Fluffy", "Smoked Salmon", 6)

tom = Cat.new("Tom", "Jerry", 15)


puts fluffy.meow
puts tom.meow

class Recipe
  attr_reader :ingredients

  def initialize(name)
    @name = name
    @ingredients = []
  end

  def add_ingredient(ingredient)
    @ingredients << ingredient
  end
end

pancakes = Recipe.new('pancakes')
p pancakes.ingredients

pancakes.add_ingredient('flour')
p pancakes.ingredients

pancakes.ingredients = ['flour']

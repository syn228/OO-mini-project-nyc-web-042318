class RecipeIngredient
  attr_accessor :recipe, :ingredient

ALL = []

  def initialize(recipe, ingredient)
    @recipe = recipe
    @ingredient = ingredient
    ALL << self
  end

  def self.all
    ALL
  end

end

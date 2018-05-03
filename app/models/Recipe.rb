class Recipe
  attr_accessor :name
ALL = []
  def initialize(name)
    @name = name
    ALL << self
  end

  def users
    RecipeCard.all.select do |recipecard|
      recipecard.recipe == self
    end
  end

  def self.all
    ALL
  end

  def self.most_popular
    recipe_count = {}
    RecipeCard.all.map do |recipecard|
      if !recipe_count[recipecard.recipe]
        recipe_count[recipecard.recipe] = 0
        recipe_count[recipecard.recipe] +=1
      else
        recipe_count[recipecard.recipe] +=1
      end
    end
    y = recipe_count.max_by{|key, value| value}
    y[0].name
  end

  def ingredients
    y = RecipeIngredient.all.select do |recipeingredient|
      recipeingredient.recipe == self
    end

    y.map do |recipe|
      recipe.ingredient
    end
  end

  def allergens
    y = Allergen.all.select do |allergen|
      ingredients.include?(allergen.ingredient)
    end

    y.map do |allergen|
      allergen.ingredient.name
    end.uniq
  end

  def add_ingredient(ingredient)
    RecipeIngredient.new(self, ingredient)
  end


end

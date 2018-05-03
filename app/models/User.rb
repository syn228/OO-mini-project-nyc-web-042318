class User
  attr_accessor :name

ALL = []

  def initialize(name)
    @name = name
    ALL << self
  end


  def recipes
    RecipeCard.all.select do |recipecard|
      recipecard.user == self
    end
  end

  def just_recipes
    self.recipes.map do |recipecard|
      recipecard.recipe
    end
  end


  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end


  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end


  def allergens
    Allergen.all.select do |allergen|
      allergen.user == self
    end
  end

  def top_three_recipes
    y = self.recipes.max_by(3){|recipecard| recipecard.rating}
    y.map do |recipecards|
      recipecards.recipe.name
    end
  end

  def most_recent_recipe
    y = self.recipes.max_by{|recipecard|recipecard.date}
    y.recipe
  end

  def grocery_list
    self.recipes.map do |recipecard|
      recipecard.recipe.ingredients
    end.flatten.uniq
  end

  def self.all
    ALL
  end

  def safe_recipes
    all_recipes = self.just_recipes
     bad_ingredients = self.allergens.map do |allergy|
        self.grocery_list.select do |ingredient|
          ingredient == allergy.ingredient
      end
    end.flatten
      safe = all_recipes.map do |recipe|
        if recipe.ingredients & bad_ingredients == []
        recipe
    end
  end
    y = safe.select do |recipe|
      recipe != nil
    end
    y.map do |the_recipe|
      the_recipe.name
    end
  end
end

require_relative '../config/environment.rb'
require 'pry'
require 'date'



u1 = User.new("U1")
u2 = User.new("U2")
u3 = User.new("U3")
u4 = User.new("U4")
u5 = User.new("U5")

r1 = Recipe.new("R1")
r2 = Recipe.new("R2")
r3 = Recipe.new("R3")
r4 = Recipe.new("R4")
r5 = Recipe.new("R5")

i1 = Ingredient.new("I1")
i2 = Ingredient.new("I2")
i3 = Ingredient.new("I3")
i4 = Ingredient.new("I4")
i5 = Ingredient.new("I5")

a1 = Allergen.new(u1,i1)
a2 = Allergen.new(u2,i5)
a3 = Allergen.new(u3,i3)
a4 = Allergen.new(u4,i1)
a5 = Allergen.new(u5,i4)
a6 = Allergen.new(u1,i3)

ri1 = RecipeIngredient.new(r1, i1)
ri2 = RecipeIngredient.new(r2, i2)
ri3 = RecipeIngredient.new(r3, i3)
ri4 = RecipeIngredient.new(r4, i2)
ri5 = RecipeIngredient.new(r5, i1)
ri1 = RecipeIngredient.new(r1, i2)
ri1 = RecipeIngredient.new(r1, i3)
ri1 = RecipeIngredient.new(r1, i4)
ri1 = RecipeIngredient.new(r1, i5)

rc1 = RecipeCard.new(u1, r1, DateTime.new(2018, 3, 30), 5)
rc2 = u1.add_recipe_card(r2, DateTime.new(2018, 2, 23), 5)
rc3 = u1.add_recipe_card(r3, DateTime.new(2018, 3, 23), 2)
rc4 = u2.add_recipe_card(r1, DateTime.new(2018, 3, 23), 2)
rc5 = u2.add_recipe_card(r2, DateTime.new(2018, 2, 23), 5)
rc6 = u2.add_recipe_card(r3, DateTime.new(2018, 3, 23), 2)

# u1.add_recipe_card(r2, 2018 3 23, 4)
# u1.add_recipe_card(r4, 2018 4 23, 5)
# u1.add_recipe_card(r5, 2018 5 30, 5)
# u2.add_recipe_card(r2, 2018 12 2, 4)
# u3.add_recipe_card(r3, 2018 10 31, 5)
# u4.add_recipe_card(r4, 2018 11 21, 3)

# u1.top_three_recipes
u1.most_recent_recipe
Ingredient.most_common_allergen
r1.allergens
u1.just_recipes
u1.safe_recipes
u2.safe_recipes
binding.pry

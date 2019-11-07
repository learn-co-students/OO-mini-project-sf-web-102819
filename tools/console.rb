require_relative '../config/environment.rb'

recipe1 = Recipe.new()
recipe2 = Recipe.new()
recipe3 = Recipe.new()
recipe4 = Recipe.new()

ingredient1 = Ingredient.new()
ingredient2 = Ingredient.new()
ingredient3 = Ingredient.new()
ingredient4 = Ingredient.new()

user1 = User.new()
user2 = User.new()
user3 = User.new()
user4 = User.new()


allergy1 = Allergy.new(ingredient1,user1)
allergy2 = Allergy.new(ingredient2,user1)
allergy3 = Allergy.new(ingredient3,user1)
allergy4 = Allergy.new(ingredient3,user3)

recipeingredient1 = RecipeIngredient.new(recipe1, ingredient1)
recipeingredient2 = RecipeIngredient.new(recipe2, ingredient2)
recipeingredient3 = RecipeIngredient.new(recipe3, ingredient3)
recipeingredient4 = RecipeIngredient.new(recipe4, ingredient4)


recipecard1 = RecipeCard.new()


binding.pry
0
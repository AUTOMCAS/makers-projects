require_relative 'lib/recipe_repository'
require_relative 'lib/database_connection'

DatabaseConnection.connect('recipes_directory')

# code to create and run class and its  methods

recipe_repository = RecipeRepository.new

# prints all
p "Id, name, cooking time, rating"
recipe_repository.all.each do |recipe|
  p "#{recipe.id} #{recipe.name} #{recipe.cooking_time} #{recipe.rating}"
end

puts "\n"

#prints one
p "Single recipe with ID of 2:"
recipe = recipe_repository.find(2)
p "#{recipe.id} #{recipe.name} #{recipe.cooking_time} #{recipe.rating}"
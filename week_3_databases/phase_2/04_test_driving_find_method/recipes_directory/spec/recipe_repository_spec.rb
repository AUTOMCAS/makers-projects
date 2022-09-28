require_relative '../lib/recipe_repository'

def reset_recipes_table
  seed_sql = File.read('spec/seeds_recipes.sql')
  connection = PG.connect({ host: '127.0.0.1', dbname: 'recipes_directory_test' })
  connection.exec(seed_sql)
end

describe RecipeRepository do
  before(:each) do 
    reset_recipes_table
  end

  it 'returns all recipes' do 
    repo = RecipeRepository.new
    recipes = repo.all

    expect(recipes.length).to eq 3

    expect(recipes[0].id).to eq '1'
    expect(recipes[0].name).to eq 'Toast'
    expect(recipes[0].cooking_time).to eq '3'
    expect(recipes[0].rating).to eq '4'

    expect(recipes[1].id).to eq '2'
    expect(recipes[1].name).to eq 'Newspaper stew'
    expect(recipes[1].cooking_time).to eq '30'
    expect(recipes[1].rating).to eq '1'
  end
  
  it "returns a single recipe" do 
    repo = RecipeRepository.new

    recipe = repo.find(3)

    expect(recipe.id).to eq '3'
    expect(recipe.name).to eq 'Rice with beetles'
    expect(recipe.cooking_time).to eq '12'
    expect(recipe.rating).to eq '3'
  end
end
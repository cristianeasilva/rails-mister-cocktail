require 'json'
require 'open-uri'

Ingredient.destroy_all

result = JSON.parse(open('http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read)
drinks = result['drinks']
#puts drinks
drinks.each do |hash|
  Ingredient.create(name: hash["strIngredient1"])
end

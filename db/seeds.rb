require 'open-uri'
require 'json'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.delete_all

url =  'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
file = open(url).read
records = JSON.parse(file)
records['drinks'].each do |record|
  name = record["strIngredient1"]
  Ingredient.create! name: name
end
# Ingredient.create(name:name)
# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")

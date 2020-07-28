# shebang line
require_relative '../config/environment.rb'
# start program
pokedex = API.new
pokedex.pokemon_character_array
pokedex.type_self_array
puts pokedex.final_output
Pry.start





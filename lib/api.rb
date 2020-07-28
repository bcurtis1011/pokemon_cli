

class API
  include HTTParty
  base_uri 'pokeapi.co'


  def initialize
    pokemon_character_request
    pokemon_type_self
    damage_relation
    @type_self = []
    @pokemon_list = []

  end

  def pokemon_character_request # edit later
    puts "Please enter a number between 1 - 807 to select a pokemon:"
    pokemon_index = gets.chomp.to_i
    pokemon_index -= 1
    limit = 1
    @get_request = self.class.get("/api/v2/pokemon?offset=#{pokemon_index}&limit=#{limit}")

  end

  def pokemon_character_array
    @pokemon_list << @get_request["results"][0]["name"].upcase

  end

  def pokemon_type_self
    puts "Please select the same number:"
    @pokemon_index = gets.chomp
    @type = self.class.get("/api/v2/pokemon/#{@pokemon_index}/")
    
  end

  def type_self_array
    type_1 = @type["types"] #  {"slot"=>1, "type"=>{"name"=>"fire", "url"=>}
    type_1.each do |type|
        type.each do |slot, number|
          @type_self << number
        end
      end
    @type_self
  end

  def  damage_relation
    @normal = "Double damage from: Fighting
    Double damage to: N/A
    Half damage from: N/A
    Half damage to: Rock, Steel
    No damage from: Ghost
    No damage to: Ghost"

    @fighting = "Double damage from: Flying, Psychic, Fairy
    Double damage to: Normal, Rock, Steel, Ice, Dark
    Half damage from: Rock, Bug, Dark
    Half damage to: Flying, Poison, Bug, Psychic, Fairy
    No damage from: N/A
    No damage to: Ghost"

    @flying = "Double damage from: rock, electric, ice
    Double damage to: fighting, bug, grass
    Half damage from: fighting, bug, grass
    Half damage to: rock, steel, electric
    No damage from: ground
    No damage to: N/A"

    @poison = "Double damage from: ground, psychic
    Double damage to: grass, fairy
    Half damage from: fighting, poison, bug, grass, fairy
    Half damage to: poison, ground, rock, ghost
    No damage from: N/A
    No damage to: steel"

    @ground = "Double damage from: water, grass, ice
    Double damage to: poison, rock, steel, fire, electric
    Half damage from: poison, rock
    Half damage to: bug, grass
    No damage from: electric
    No damage to: flying"

    @rock = "Double damage from: fighting, ground, steel, water, grass
    Double damage to: flying, bug, fire, ice
    Half damage from: normal, flying, poison, fire
    Half damage to: fighting, ground, steel
    No damage from: N/A
    No damage to: N/A"

    @bug = "Double damage from: flying, rock, fire
    Double damage to: grass, psychic, dark
    Half damage from: fighting, ground, grass
    Half damage to: fighting, flying, poison, ghost, steel, fire, fairy
    No damage from: N/A
    No damage to: N/A"
    
    @ghost = "Double damage from: ghost, dark
    Double damage to: ghost, psychic
    Half damage from: poison, bug
    Half damage to: dark
    No damage from: normal, fighting
    No damage to: normal"

    @steel = "Double damage from: fighting, ground, fire
    Double damage to: rock, ice, fairy
    Half damage from: normal, flying, rock, bug, steel, grass, psychic, ice, dragon, fairy
    Half damage to: steel, fire, water, electric
    No damage from: poison
    No damage to: N/A "

    @fire = "Double damage from: ground, rock, water
    Double damage to: bug, steel, grass, ice
    Half damage from: bug, steel, fire, grass, ice, fairy
    Half damage to: rock, fire, water, dragon
    No damage from: N/A 
    No damage to: N/A "

    @water = "Double damage from: grass, electric
    Double damage to: ground, rock, fire
    Half damage from: steel, fire, water, ice
    Half damage to: water, grass, dragon
    No damage from: N/A
    No damage to: N/A "

    @grass = "Double damage from: flying, poison, bug, fire, ice
    Double damage to: ground, rock, water
    Half damage from: ground, water, grass, electric
    Half damage to: flying, poison, bug, steel, fire, grass, dragon
    No damage from: N/A
    No damage to: N/A "

    @electric = "Double damage from: ground
    Double damage to: flying, water
    Half damage from: flying, steel, electric
    Half damage to: grass, electric, dragon
    No damage from: N/A
    No damage to: N/A "

    @psychic = "Double damage from: bug, ghost, dark
    Double damage to: fighting, poison
    Half damage from: fighting, psychic
    Half damage to: steel, psychic
    No damage from: N/A
    No damage to: dark"

    @ice = "Double damage from: fighting, rock, steel, fire
    Double damage to: flying, ground, grass, dragon
    Half damage from: ice
    Half damage to: steel, fire, water, ice
    No damage from: N/A
    No damage to: N/A "

    @dragon = "Double damage from: ice, dragon, fairy
    Double damage to: dragon
    Half damage from: fire, water, grass, electric
    Half damage to: steel
    No damage from: N/A
    No damage to: N/A"

    @dark = "Double damage from: fighting, bug, fairy
    Double damage to: ghost, psychic
    Half damage from: ghost, dark
    Half damage to: fighting, dark, fairy
    No damage from: psychic
    No damage to: N/A"

    @fairy = "Double damage from: poison, steel
    Double damage to: fighting, dragon, dark
    Half damage from: fighting, bug, dark
    Half damage to: poison, steel, fire
    No damage from: dragon
    No damage to: N/A "

    @unknown = "Double damage from: N/A
    Double damage to: N/A
    Half damage from: N/A
    Half damage to: N/A
    No damage from: N/A
    No damage to: N/A "

    @shadow = "Double damage from: N/A
    Double damage to: N/A
    Half damage from: N/A
    Half damage to: N/A
    No damage from: N/A
    No damage to: N/A "
  end

  def final_output
    if @type_self[1]["name"] == "normal"
      puts "#{@pokemon_index}. #{@pokemon_list[0]} - type: #{@type_self[1]["name"]}
    #{@normal}"
    elsif @type_self[1]["name"] == "fighting"
      puts "#{@pokemon_index}. #{@pokemon_list[0]} - type: #{@type_self[1]["name"]}
    #{@fighting}"
    elsif @type_self[1]["name"] == "flying"
      puts "#{@pokemon_index}. #{@pokemon_list[0]} - type: #{@type_self[1]["name"]}
    #{@flying}"
    elsif @type_self[1]["name"] == "poison"
      puts "#{@pokemon_index}. #{@pokemon_list[0]} - type: #{@type_self[1]["name"]}
    #{@poison}"
    elsif @type_self[1]["name"] == "ground"
      puts "#{@pokemon_index}. #{@pokemon_list[0]} - type: #{@type_self[1]["name"]}
    #{@ground}"
    elsif @type_self[1]["name"] == "rock"
      puts "#{@pokemon_index}. #{@pokemon_list[0]} - type: #{@type_self[1]["name"]}
    #{@rock}"
    elsif @type_self[1]["name"] == "bug"
      puts "#{@pokemon_index}. #{@pokemon_list[0]} - type: #{@type_self[1]["name"]}
    #{@bug}"
    elsif @type_self[1]["name"] == "ghost"
      puts "#{@pokemon_index}. #{@pokemon_list[0]} - type: #{@type_self[1]["name"]}
    #{@ghost}"
    elsif @type_self[1]["name"] == "steel"
      puts "#{@pokemon_index}. #{@pokemon_list[0]} - type: #{@type_self[1]["name"]}
    #{@steel}"
    elsif @type_self[1]["name"] == "fire"
      puts "#{@pokemon_index}. #{@pokemon_list[0]} - type: #{@type_self[1]["name"]}
    #{@fire}"
    elsif @type_self[1]["name"] == "water"
      puts "#{@pokemon_index}. #{@pokemon_list[0]} - type: #{@type_self[1]["name"]}
    #{@water}"
    elsif @type_self[1]["name"] == "grass"
      puts "#{@pokemon_index}. #{@pokemon_list[0]} - type: #{@type_self[1]["name"]}
    #{@grass}"
    elsif @type_self[1]["name"] == "electric"
      puts "#{@pokemon_index}. #{@pokemon_list[0]} - type: #{@type_self[1]["name"]}
    #{@electric}"
    elsif @type_self[1]["name"] == "psychic"
      puts "#{@pokemon_index}. #{@pokemon_list[0]} - type: #{@type_self[1]["name"]}
    #{@psychic}"
    elsif @type_self[1]["name"] == "ice"
      puts "#{@pokemon_index}. #{@pokemon_list[0]} - type: #{@type_self[1]["name"]}
    #{@ice}"
    elsif @type_self[1]["name"] == "dragon"
      puts "#{@pokemon_index}. #{@pokemon_list[0]} - type: #{@type_self[1]["name"]}
    #{@dragon}"
    elsif @type_self[1]["name"] == "dark"
      puts "#{@pokemon_index}. #{@pokemon_list[0]} - type: #{@type_self[1]["name"]}
    #{@dark}"
    elsif @type_self[1]["name"] == "fairy"
      puts "#{@pokemon_index}. #{@pokemon_list[0]} - type: #{@type_self[1]["name"]}
    #{@fairy}"
    elsif @type_self[1]["name"] == "unknown"
      puts "#{@pokemon_index}. #{@pokemon_list[0]} - type: #{@type_self[1]["name"]}
    #{@unknown}"
    elsif @type_self[1]["name"] == "shadow"
      puts "#{@pokemon_index}. #{@pokemon_list[0]} - type: #{@type_self[1]["name"]}
    #{@shadow}"

    end

  end

end

``` ruby

def  damage_relation_normal
  @normal = "Double damage from: Fighting
  Double damage to: N/A
  Half damage from: N/A
  Half damage to: Rock, Steel
  No damage from: Ghost
  No damage to: Ghost"
  

end

def damage_relation_fighting
  @fighting = "Double damage from: Flying, Psychic, Fairy
  Double damage to: Normal, Rock, Steel, Ice, Dark
  Half damage from: Rock, Bug, Dark
  Half damage to: Flying, Poison, Bug, Psychic, Fairy
  No damage from: N/A
  No damage to: Ghost"

end

def  damage_relation_flying
  @flying = "Double damage from: rock, electric, ice
  Double damage to: fighting, bug, grass
  Half damage from: fighting, bug, grass
  Half damage to: rock, steel, electric
  No damage from: ground
  No damage to: N/A"
end

def damage_relation_poison
  @poison = "Double damage from: ground, psychic
  Double damage to: grass, fairy
  Half damage from: fighting, poison, bug, grass, fairy
  Half damage to: poison, ground, rock, ghost
  No damage from: N/A
  No damage to: steel"

end

def damage_relation_ground
  @ground = "Double damage from: water, grass, ice
  Double damage to: poison, rock, steel, fire, electric
  Half damage from: poison, rock
  Half damage to: bug, grass
  No damage from: electric
  No damage to: flying"

end

def damage_relation_rock
  @rock = "Double damage from: fighting, ground, steel, water, grass
  Double damage to: flying, bug, fire, ice
  Half damage from: normal, flying, poison, fire
  Half damage to: fighting, ground, steel
  No damage from: N/A
  No damage to: N/A"

end

def damage_relation_bug
  @bug = "Double damage from: flying, rock, fire
  Double damage to: grass, psychic, dark
  Half damage from: fighting, ground, grass
  Half damage to: fighting, flying, poison, ghost, steel, fire, fairy
  No damage from: N/A
  No damage to: N/A"

end

def damage_relation_ghost
  @ghost = "Double damage from: ghost, dark
  Double damage to: ghost, psychic
  Half damage from: poison, bug
  Half damage to: dark
  No damage from: normal, fighting
  No damage to: normal"

end

def damage_relation_steel
  @steel = "Double damage from: fighting, ground, fire
  Double damage to: rock, ice, fairy
  Half damage from: normal, flying, rock, bug, steel, grass, psychic, ice, dragon, fairy
  Half damage to: steel, fire, water, electric
  No damage from: poison
  No damage to: N/A "

end

def damage_relation_fire
  @fire = "Double damage from: ground, rock, water
  Double damage to: bug, steel, grass, ice
  Half damage from: bug, steel, fire, grass, ice, fairy
  Half damage to: rock, fire, water, dragon
  No damage from: N/A 
  No damage to: N/A "

end

def damage_relation_water
  @water = "Double damage from: grass, electric
  Double damage to: ground, rock, fire
  Half damage from: steel, fire, water, ice
  Half damage to: water, grass, dragon
  No damage from: N/A
  No damage to: N/A "

end

def damage_relation_grass
  @grass = "Double damage from: flying, poison, bug, fire, ice
  Double damage to: ground, rock, water
  Half damage from: ground, water, grass, electric
  Half damage to: flying, poison, bug, steel, fire, grass, dragon
  No damage from: N/A
  No damage to: N/A "

end

def damage_relation_electric
  @electric = "Double damage from: ground
  Double damage to: flying, water
  Half damage from: flying, steel, electric
  Half damage to: grass, electric, dragon
  No damage from: N/A
  No damage to: N/A "

end

def damage_relation_psychic
  @psychic = "Double damage from: bug, ghost, dark
  Double damage to: fighting, poison
  Half damage from: fighting, psychic
  Half damage to: steel, psychic
  No damage from: N/A
  No damage to: dark"

end

def damage_relation_ice
  @ice = "Double damage from: fighting, rock, steel, fire
  Double damage to: flying, ground, grass, dragon
  Half damage from: ice
  Half damage to: steel, fire, water, ice
  No damage from: N/A
  No damage to: N/A "

end

def damage_relation_dragon
  @dragon = "Double damage from: ice, dragon, fairy
  Double damage to: dragon
  Half damage from: fire, water, grass, electric
  Half damage to: steel
  No damage from: N/A
  No damage to: N/A"

end

def damage_relation_dark
  @dark = "Double damage from: fighting, bug, fairy
  Double damage to: ghost, psychic
  Half damage from: ghost, dark
  Half damage to: fighting, dark, fairy
  No damage from: psychic
  No damage to: N/A"

end

def damage_relation_fairy
  @fairy = "Double damage from: poison, steel
  Double damage to: fighting, dragon, dark
  Half damage from: fighting, bug, dark
  Half damage to: poison, steel, fire
  No damage from: dragon
  No damage to: N/A "

end

def damage_relation_unknown
  @unknown = "Double damage from: N/A
  Double damage to: N/A
  Half damage from: N/A
  Half damage to: N/A
  No damage from: N/A
  No damage to: N/A "

end

def damage_relation_shadow
  @shadow = "Double damage from: N/A
  Double damage to: N/A
  Half damage from: N/A
  Half damage to: N/A
  No damage from: N/A
  No damage to: N/A "

end

```
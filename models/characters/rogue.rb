require_relative 'player_character'

class Rogue < PlayerCharacter

  def initialize (name, level = 1, experience = 0)
    health = 100
    strength = 50
    dexterity = 100
    intelligence = 40
    super(name, health, strength, dexterity, intelligence, level, experience)
  end
end

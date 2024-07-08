require_relative 'player_character'

class Warrior < PlayerCharacter

  def initialize (name, level = 1, experience = 0)
    health = 150
    strength = 100
    dexterity = 50
    intelligence = 30
    super(name, health, strength, dexterity, intelligence, level, experience)
  end
end

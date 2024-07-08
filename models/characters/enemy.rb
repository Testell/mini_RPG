class Enemy
  attr_reader :character, :damage

  def initialize (damage = 15)
    name = "Kings Foot Soldier"
    health = 80
    strength = 60
    dexterity = 60
    intelligence = 50
    @character = Character.new(name, health, strength, dexterity, intelligence)
    self.damage
  end

  def damage=(value)
    unless value.is_a?(Integer)
      raise TypeError, 'Damage must be an integer'
    end
    @damage = value
  end
end

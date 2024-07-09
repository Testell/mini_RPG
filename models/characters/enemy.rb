class Enemy
  attr_reader :character, :damage

  def initialize(damage = 15)
    name = "Kings Foot Soldier"
    health = 80
    strength = 60
    dexterity = 60
    intelligence = 50
    @character = Character.new(name, health, strength, dexterity, intelligence)
    self.damage = damage
  end

  def damage=(value)
    unless value.is_a?(Integer)
      raise TypeError, 'Damage must be an integer'
    end
    @damage = value
  end

  def display_details
    @character.display_details
  end

  def health
    @character.health
  end

  def take_damage(amount)
    #puts "Enemy taking damage: #{amount}"
    #puts "Enemy health before: #{@character.health}"
    @character.health -= amount
    #puts "Enemy new health: #{@character.health}"
  end

  def attack(player)
    puts "#{@character.name} attacks!"
    player.take_damage(@damage)
    sleep(1)
  end

  def name
    @character.name
  end

end

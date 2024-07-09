class Warrior
  attr_reader :character, :level, :experience, :damage

  def initialize(name, level = 1, experience = 0, damage = 50)
    health = 150
    strength = 100
    dexterity = 50
    intelligence = 30
    @character = Character.new(name, health, strength, dexterity, intelligence)
    self.level = level
    self.experience = experience
    self.damage = damage
  end

  def level=(value)
    unless value.is_a?(Integer)
      raise TypeError, 'Level must be an integer'
    end
    @level = value
  end

  def experience=(value)
    unless value.is_a?(Integer)
      raise TypeError, 'Experience must be an integer'
    end
    @experience = value
  end

  def damage=(value)
    unless value.is_a?(Integer)
      raise TypeError, 'Damage must be an integer'
    end
    @damage = value
  end

  def display_details
    @character.display_details
    puts "Level: #{@level}"
    puts "Experience: #{@experience}"
  end

  def health
    @character.health
  end

  def take_damage(amount)
    #puts "Player taking damage: #{amount}"
    #puts "Player health before: #{@character.health}"
    @character.health -= amount
    #puts "Player new health: #{@character.health}"
  end

  def attack(enemy)
    puts "#{@character.name} attacks!"
    enemy.take_damage(@damage)
    sleep(1)
  end

  def name
    @character.name
  end

end

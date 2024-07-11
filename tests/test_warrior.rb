require 'minitest/autorun'
require './models/characters/character'
require './models/characters/warrior'

class TestWarrior < Minitest::Test
  def setup
    @warrior = Warrior.new("Test Warrior")
    @enemy = Warrior.new("Test Enemy")
  end

  def test_take_damage
    initial_health = @warrior.health
    damage = 20
    @warrior.take_damage(damage)
    assert_equal initial_health - damage, @warrior.health, "take_damage method failed"
  end

  def test_attack
    initial_health = @enemy.health
    @warrior.attack(@enemy)
    assert_equal initial_health - @warrior.damage, @enemy.health, "attack method failed"
  end
end

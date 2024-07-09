require_relative 'models/characters/character'
require_relative 'models/characters/warrior'
require_relative 'models/characters/rogue'
require_relative 'models/characters/enemy'

character_classes = {
  'Warrior' => Warrior,
  'Rogue' => Rogue
}

enemies = {'Enemy' => Enemy}

def combat(player, enemy)
  loop do
    enemy.attack(player)
    break if player.health <= 0
    puts "#{enemy.name} does #{enemy.damage} damage. #{player.name}'s remaining health: #{player.health}"
    sleep(3)
    player.attack(enemy)
    break if enemy.health <= 0
    puts "#{player.name} does #{player.damage} damage. #{enemy.name} remaining health: #{enemy.health}"
    sleep(3)
  end

  if player.health <= 0
    puts "You have been defeated!"
    puts "Game over!"
  elsif enemy.health <= 0
    puts "#{enemy.character.name} has been defeated!"
    puts "Congratulations you have beaten mini-RPG!"
  end
end

puts "Welcome to Mini-RPG"
puts "Name your character:"
name = gets.chomp

pp "Choose your character class"

character_classes.each_with_index do |(class_name, _), index|
  puts "#{index + 1}. #{class_name}"
end

print '<'
input = gets.chomp.to_i

if input.between?(1, character_classes.size)
  selected_class = character_classes.keys[input - 1]
  player_character = character_classes[selected_class].new(name.capitalize)
  player_character.display_details
else
  pp "Invalid Selection"
end

puts "#{name} is walking through a dark forest when suddenly..."
sleep(2)
puts "..."

enemy = Enemy.new
enemy_name = enemy.character.name
sleep(2)
puts "#{enemy_name} attacks!!"

options = ["Engage in combat", "Run"]
sleep(1)

puts "Choose an action"
options.each_with_index do |option, index|
  puts "#{index + 1}. #{option}"
end

print '<'
input = gets.chomp.to_i

if input.between?(1, options.size)
  selected_option = options[input - 1]
  
  case selected_option
  when "Engage in combat"
    puts "Let the fight commence!"
    sleep(2)
    combat(player_character, enemy)
  when "Run"
    puts "There is no running in mini-RPG!"
    sleep(2)
    puts "Let the fight commence!"
    sleep(1)
    combat(player_character, enemy)
  end
else
  puts "Invalid Selection"
end

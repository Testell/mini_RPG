require_relative 'models/characters/rogue'
require_relative 'models/characters/warrior'

character_classes = {
  'Rogue' => Rogue,
  'Warrior' => Warrior
}

pp "Welcome to Mini-RPG"
pp "Name your character:"
name = gets.chomp

pp "Choose your character class"

character_classes.each_with_index do |(class_name, _), index|
  puts "#{index + 1}. #{class_name}"
end

print '<'
input = gets.chomp.to_i

if input.between?(1, character_classes.size)
  selected_class = character_classes.keys[input - 1]
  player_character = character_classes[selected_class].new(name)
  player_character.display_details
else
  pp "Invalid Selection"
end

  

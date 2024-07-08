require_relative 'models/characters/character'
require_relative 'models/characters/warrior'
require_relative 'models/characters/rogue'

character_classes = {
  'Warrior' => Warrior,
  'Rogue' => Rogue
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

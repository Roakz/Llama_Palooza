require_relative "../classes/sloth_class"

#Not a proffesional test. It is however a garunteed way to ensure the output is random everytime
# testing that sloth randomizes its attributes
sloth = Sloth.new
sloth1 = Sloth.new
sloth2 = Sloth.new
sloth3 = Sloth.new


puts sloth.comp_health
puts sloth.comp_attack
puts sloth.comp_defense

puts sloth1.comp_health
puts sloth1.comp_attack
puts sloth1.comp_defense

puts sloth2.comp_health
puts sloth2.comp_attack
puts sloth2.comp_defense

puts sloth3.comp_health
puts sloth3.comp_attack
puts sloth3.comp_defense

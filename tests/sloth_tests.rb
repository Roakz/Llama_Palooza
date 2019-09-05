require_relative "../classes/sloth_class"

#Not a proffesional test. It is however a garunteed way to ensure the output is random everytime
# testing that sloth randomizes its attributes
sloth = Sloth.new
sloth1 = Sloth.new
sloth2 = Sloth.new
sloth3 = Sloth.new


puts sloth.com_health
puts sloth.com_attack
puts sloth.com_defense

puts sloth1.com_health
puts sloth1.com_attack
puts sloth1.com_defense

puts sloth2.com_health
puts sloth2.com_attack
puts sloth2.com_defense

puts sloth3.com_health
puts sloth3.com_attack
puts sloth3.com_defense

#Requireds
require 'artii'
require 'rainbow'
require_relative 'sloth_class'
require_relative 'llama_classes'

#Heading that says Welcome to llama palooza using the artii and rainbow gems to form a colourful ascii style heading.
w = Artii::Base.new :font => 'slant'
w = w.asciify('Welcome to . . .') 
a = Artii::Base.new :font => 'slant'
a = a.asciify('LLAMA!') 
b = Artii::Base.new :font => 'slant'
b = b.asciify('PALOOZA!!!')
puts Rainbow("#{w}").red.bright
puts Rainbow("#{a}").blue.bright
puts Rainbow("#{b}").purple.bright
puts "" #Empty line below heading

# Game greeting made colourful with rainbow gem.
puts Rainbow("------------------------------------------------------------------------------------------------------").bright.red
puts ""
puts Rainbow("We all know that Llamas and Sloths have long fought for title of warrior of the ages.Right here!").blue
puts Rainbow("Right now!...Is your oppurtunity to join the clan of Llama Warriors in this epic battle.").blue
puts Rainbow("A battle to the death...There can only be one winner. Choose your Llamma warrior wisely!").blue
puts""
puts Rainbow("--------------------Press ENTER to check out the Clans Profiles and make your pick--------------------").bright.red

gets.chomp # Allows user to press enter to coninue to the next page, which will be the llama profiles and stats.
system("clear") # clears the screen to give the user a fresh page to select there llama from.



#Llama Profiles and game rules page 

# creating an instance of each llama subclass which will inherit the Llama super class attributes 
karl = Karl.new
guspatcho = Guspatcho.new
lemonywinks = LemonyWinks.new
#printing the individual llama sub classes with thier adjusted attributes.
k = Artii::Base.new :font => 'slant'
k = k.asciify('KARL') 
puts Rainbow("#{k}").red.bright
puts karl.k_able 
puts" "
g = Artii::Base.new :font => 'slant'
g = g.asciify('Guspatcho') 
puts Rainbow("#{g}").blue.bright
puts guspatcho.g_able 
puts" "
l = Artii::Base.new :font => 'slant'
l = l.asciify('Lemony - Winks') 
puts Rainbow("#{l}").purple.bright
puts lemonywinks.l_able 

# sloth = Sloth.new
# sloth1 = Sloth.new
# sloth2 = Sloth.new
# sloth3 = Sloth.new


# puts sloth.com_health
# puts sloth.com_attack
# puts sloth.com_defense

# puts sloth1.com_health
# puts sloth1.com_attack
# puts sloth1.com_defense

# puts sloth2.com_health
# puts sloth2.com_attack
# puts sloth2.com_defense

# puts sloth3.com_health
# puts sloth3.com_attack
# puts sloth3.com_defense

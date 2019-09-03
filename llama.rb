#Requireds
require 'artii'
require 'rainbow'
require_relative 'sloth_class'
require_relative 'llama_classes'
require_relative 'battle_class'

# Initializes a llama class so that i can use the print artii method
greeting = LlamaWarriors.new
# Heading that says Welcome to llama palooza using the artii and rainbow gems to form a colourful ascii style heading.
puts Rainbow(greeting.print_artii("WELCOME TO . . .")).bright.red
puts Rainbow(greeting.print_artii("LLAMA")).bright.blue
puts Rainbow(greeting.print_artii("PALOOZA !!!")).bright.purple
puts""

# Game greeting made colourful with rainbow gem.
puts Rainbow("------------------------------------------------------------------------------------------------------\n").bright.red
puts Rainbow("We all know that Llamas and Sloths have long fought for title of warrior of the ages.Right here!\n
Right now!...Is your oppurtunity to join the clan of Llama Warriors in this epic battle\n
A battle to the death...There can only be one winner. Choose your Llamma warrior wisely!\n").blue
puts Rainbow("--------------------Press ENTER to check out the Clans Profiles and make your pick--------------------").bright.red
gets.chomp # Allows user to press enter to coninue to the next page, which will be the llama profiles and stats.
system("clear") # clears the screen to give the user a fresh page to select their llama from.

# Llama Profiles & selection
# Creating an instance of each llama subclass which will inherit the Llama super class attributes and methods 
karl = Karl.new
guspatcho = Guspatcho.new
lemonywinks = LemonyWinks.new

# Calling my llama class print artii method and adding color with rainbow
puts Rainbow(karl.print_artii("KARL")).bright.red
puts Rainbow(karl.display).red

puts Rainbow(guspatcho.print_artii("GUSPATCHO")).bright.blue
puts Rainbow(guspatcho.display).blue 

puts Rainbow(lemonywinks.print_artii("LEMONY-WINKS")).bright.purple
puts Rainbow(lemonywinks.display).purple

# Selection of prefered llama for battle.
puts Rainbow("------------------------------------------").bright.red
puts Rainbow("It's time to choose!").blue
puts Rainbow("Options are 1.karl").blue
puts Rainbow("            2.Guspatcho").blue
puts Rainbow("            3.Lemony-Winks").blue
puts Rainbow("            4.Randomly Generate").blue
puts Rainbow("-----Type your response & press ENTER-----").bright.red

#Battle class  instance created to use the user_select method which creates a new instance of the chosen llama.
battle = Battle.new
# Using the new battle instance and calling the user_select method passing it user input as its parameter.
#The method outputs the chosen llama as a new instance and returns that instance to player. 
#player is now an instance of the selected llama
player = battle.user_select(gets.chomp.to_i)
#sloth randomly generates its attributes upon being created.
sloth = Sloth.new
system("clear")
puts player.llama_atts #testing purposes
puts sloth.sloth_atts
#calling the battle method match_up with the composition of both player llama class instance and sloth, sloth boss instance
battle.match_up(player.name, sloth.name, player)

# Player picks heads or tails to decide who starts
puts Rainbow("-----------------------------------------------------").bright.red
puts Rainbow("Lets flip a coin. If you win You get the first attack").blue
puts Rainbow("Options are 1.HEADS").blue
puts Rainbow("            2.TAILS").blue
puts Rainbow("-----------Type your response & press ENTER----------").bright.red  

battle.battle_loop(player.llama_atts, sloth.sloth_atts, gets.chomp.to_i)
#create a method ouput the attributes of the new instances of llama and sloth and put them into a new battle method to compare

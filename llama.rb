#Requireds
require 'artii'
require 'rainbow'
require_relative 'classes/sloth_class'
require_relative 'classes/llama_classes'
require_relative 'classes/battle_class'

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
#This was done for calling the print artii method and display methods to create the profile screen.
karl = Karl.new
guspatcho = Guspatcho.new
lemonywinks = LemonyWinks.new

#This Loop will keep looping the game unless the player does not want to choose a new llama. 
#In which case there is anoter until loop nested further down at the heads and tails loop.
loop do
new_llama = nil #resetting the values to ensure loop logic continues to work.
play_again = nil

# Calling my llama class print artii method and adding color with rainbow
puts Rainbow(karl.print_artii("KARL")).bright.red
puts Rainbow(karl.display).red

puts Rainbow(guspatcho.print_artii("GUSPATCHO")).bright.blue
puts Rainbow(guspatcho.display).blue 

puts Rainbow(lemonywinks.print_artii("LEMONY-WINKS")).bright.purple
puts Rainbow(lemonywinks.display).purple

# Selection of preffered llama for battle.
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

# This is the nested "until" which loops the game without selecting a new llama
until new_llama == "y"
new_llama = nil # re- setting the value of new llama to nil so the loop logic works

#sloth randomly generates its attributes upon being created.
sloth = Sloth.new
system("clear")

#calling the battle method match_up with the composition of both player (llama class instance)
# & sloth (sloth boss instance)
battle.match_up(player.name, sloth.name)
puts Rainbow("-----------------------------------------------------").bright.red
puts Rainbow(sloth.display).bright.red

# Player picks heads or tails to decide who starts
puts Rainbow("-----------------------------------------------------").bright.red
puts Rainbow("Lets flip a coin. If you win You get the first attack").blue
puts Rainbow("Options are 1.HEADS").blue
puts Rainbow("            2.TAILS").blue
puts Rainbow("-----------Type your response & press ENTER----------").bright.red  
#accepting user response to coin toss heads or tails and assigning to the variable response
response = gets.chomp.to_i
system("clear")

# user response is used as an argument parameter for the coin_toss method and printed in artii to screen
battle.coin_toss(response, player.llama_atts, sloth.sloth_atts, player.name, sloth.name)
puts Rainbow( greeting.print_artii( battle.flip == 1 ? "HEADS" : "TAILS")).bright.red 
puts Rainbow( greeting.print_artii( battle.coin == battle.flip ? "YOU START!" : "SLOTH BOSS STARTS : (")).bright.blue
puts Rainbow("----------------PRESS ENTER TO START-----------------").bright.red  
gets
system("clear")

# Battle screen header printed to screen and the battle_loop method called to start the battle.
puts Rainbow(greeting.print_artii("BATTLE! BATTLE! BATTLE!")).bright.purple
puts Rainbow("---------------------PRESS ENTER TO START---------------------").bright.purple
gets.chomp
battle.battle_loop
system("clear")

# Winner display page and option to play again with or without new llama
puts Rainbow(greeting.print_artii("#{battle.winner}")).bright.red
puts Rainbow(greeting.print_artii("DEFEATED")).bright.blue
puts Rainbow(greeting.print_artii("#{battle.loser}")).bright.purple
puts Rainbow(greeting.print_artii("#{battle.winner} WINS ! ! !")).bright.blue
puts Rainbow("-----------------------------------------------------").bright.red  
puts Rainbow("Play again? y/n").bright.blue
puts Rainbow("-----------Type your response & press ENTER----------").bright.red  
play_again = gets.chomp

# small until loop nested with another in the "case" to ensure that the user can only input the required answers.
# Once they answer NO to playing again the program exits, else they choose if they want a new llama or not.
#if they want a new llama it loops to user select screen and resets the variables to nil
#if they dont want a new llama the until loop above continues and once again resets the variables to nil
#This is enables the loops to coninue infinately
until play_again == "y" && new_llama == "y" || new_llama == "n"  
 case play_again
 when "n"
    exit
 when "y"
   puts Rainbow("Do you want to choose a new llama?y/n").bright.blue
   new_llama = gets.chomp
   until new_llama == "y" || new_llama == "n"
     puts Rainbow("INVALID INPUT TRY AGAIN").bright.red
     new_llama = gets.chomp
   end
 else  
    puts Rainbow("INVALID INPUT TRY AGAIN").bright.red
    play_again = gets.chomp
 end
end
end
end



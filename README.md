# roarkzprojects
![Llama Palooza Welcome](pictures/greeting1.png)

#Application Development Plan#

###Contents###
**1.** Statement of Purpose and Scope
  1.1 Purpose
  1.2 Scope
**2.** Application features
  2.1 Variable types
  2.2 Classes & methods
  2.3 Arrays
  2.4 Loops & Conditionals
  2.5 Error Handling
**3.** User Guide
  3.1 User instructions
  3.2 Game rules
**4.** Flow chart diagram
**5.** App implementation
**6.** Conclusion 

###1. Statement of Purpose and Scope###

####1.1 Purpouse####

Llama Palooza is being developed as part of my Fast Track coding bootcamp assessment criteria. This Application will demonstrate what I have learnt over the past 2 weeks and bring it all together, into an operational terminal application, in the form of a text based battle game.

####1.2 Scope####

What will it do? Llama palooza will be an interactive text based battle game that allows the user/player to choose
from 3 Llama clan warriors. Each of these characters will have a varying level of attributes. The player will then enter battle with the Sloth Boss. The Sloth Boss's attributes will be randomly generated and the match will be displayed. The generation Of Soth Boss's attributes will be within a fair scope to allow for fun and fair game play.

Once the match is displayed a heads and tails choice will go to the player and and the winner will start (either the player or sloth boss). Each player will take turns at attacking (randomly generated attack types) until a winner is apparent. The player will then have the option of playing again or exiting the game. If the player chooses to play again they can then choose if they want to change clans or continue with their current Llama. Sloth boss's attributrs will be regenerated to ensure fair game play.

**Have fun!**

**What problem will it solve?** This is purely for professional and personal development and to meet assessment criteria.

Whos it for? This game will be a bit of fun for anybody who enjoys text based game play. Also I hope that some of the methods and features included, within Llama Palooza, will help aspiring developers with their own projects. I also look forward to having access to the finished product to look back at for my own developmental purposes.

###2. Application Features ###

This application will use a range of features to demonsatrate my understanding of the basic principles of programming using the ruby language. Below is an outline of what will be used and where in the app.

####2.1 Variable types####
Llama palooza will need to use multiple variable types during the operation of the program. This program will be built mostly on classes that carry out methods and are called at appropriate times using composition to combine the output into the battle class where neccesary. Instance variables will play a large role within the Llama and sloth Classes as well as the battle class to hold onto information required to carry out the specific methods. When this information needs to be held, outside of the class, Ruby program local variables will be used and the value of the instance variables returned. This will assist with reducing unneccesary memory usage and only storing what is required when it is required. Being that this program heavily relies on classes and the calculations carried out in the methods within them.

####2.2 Classes####
As previously stated, in the variable type section, Classes will be a large part of this program. I am planning on structuring the game on 3 main classes. 

**The first class** will be the Llama class. Within the llama class there will be 3 sub-classes that inherit directly from the Llama "superclass" to initialize the over-arching attributes of the llamas. Each llama will then have 1 special attribute which will be specified in the specific subclass. This will mean it takes precedance over the superclass for that particular attribute. Although i could have used modules for this i found this to be a DRY-er simpler approach.

**The second class** is the Sloth Boss class. Upon initialization the sloth class will randomly generate its attributes for each attribute area I.E Health, Attack & Hp. This will ensure fair and interesting game play.

**Third and final** will be the battle class. This will execute the battle when initalized and will be composed using the attribute output from the initialized llamas and sloth Boss. I believe that using a class for this is the easiest way to contain the methods and allows it to be called as many times as is needed without creating an abundance of code.

####2.3 Arrays####
I will use arrays in 2 sections of the app. The first array used will be if the player wants to randomly generate their llama instead of choosing for themselves. This will be a simple 3 element array containing the three clans which a random sample will be taken from & retuned as a result.

The second use of arrays will be in the battle loop. During battle at each attack an attack description will once again be randomly sampled from the list stored within the array. The Sloth Boss will have its own array of attacks to keep it interesting. These attack descriptions wont effect who wins it is purely for user enjoyment and to keep it interesting. The attributes will mathematically decide who wins. Given more time it could always be updated to include additional attack points depnding on attack types etc. I however want to demonstrate constraint in planning and carrying out a project.

####2.4 Loops and conditionals####
The whole game will be contained within a "Loop DO" loop to ensure continuing game play whilst the player wishes to continue. Part of the play on loop will allow an option to change clans or remain the same. The main loop though will be the battle loop. This will use boolean operators to continue to loop "Until" a true is returned on a given condition (either players or sloth boss's HP is dimished).

Conditionals will be used for selection at several points during the program. There will be a Case used to outline "when" conditions when choosing the laama, or randomize llama option, and also within the battle methods. The heads and tails to decide who starts will be a true/false boolean operator using a simple if else statement. 

####2.5 Error Handling####
Error handling will be developed through continuous (TDD) Test dirven development during development of this program and as issues are identified they will be resolved. The main areas that will be observed are anywhere that the user has input. I want to ensure that when inputs, other than what are requested, are entered an error will be returned and it will loop back for another opporunity for the user to input the request. This will arise at picking the Llama clan, heads and tales, anywhere the user needs to press enter to continue, when the user is asked if they want to play again and, if they choose to play again, when they are asked if they want to change clan.

From a development point of view i have installed the test-unit Gem which will be used to drive TDD during this project. All tests will be stored in a seperate directory within the projects parent directory. This will keep them accesible for future/continues development of this project.

###3. User guide###

This guide will demonstrate how the user can access and use Llama palooza. The app will be presented in such a way that it will contain explicit instructions on how to play and be very easy to self navigate without much direction. each screen will prompt the user onto the next and the rules will be set out in an weasy to understand manner within the app and are also below for your convenience.

####3.1 User instrucitons####
**Start up**
To run the application you must have ruby installed with the appropriate GEMS as referenced in the gem file when the repository is downloaded. Enter the below command to run the program.

![Start up](/pictures/startup.png)


*exit instructions
*guide through each step of game and what to press and do to proceed

####3.2 Game rules####
Llama Palooza is a text based battle game in which you will select your preffered Llama to battle the Sloth Boss.
Each Llama has different attributes so choose wisely! Once you have selected a llama the computer will generate the attributes of the Sloth Boss wihtin a fair range for fun and fair gameplay.

**a.** Select a llama from the profile page (choose carefully they all have different attributes which are listed on the selection page.)
**b.** The computer will randomly generate your matchup and display the match up on screen. Its time to pick heads or tales. The winner gets the first attack!
**c.** You will be prompted to press enter to initalize your attack and a progress update will be posted to the screen. Whilst either you or the sloth boss are still standing you will continue the battle by pressing enter when prompted and continue to recieve updates of the battle! Good luck!
**d.** Once a winner is decided, the results will be displayed, and you will be given the opportunity to play again or exit the app. simply enter a y/n input as prompted and press enter.
**e.** If you choose to play on you will be given an option to select a new llama or cotinue with your current selection. Simply enter the appropriate y/n selection and press enter to continue!

**There is only one rule....Have Fun!!!**

###4. Flow chart diagram###

Below i have attached a flow chart diagram which explains the flow of the game.. * research and insert format also include an explanation of different flow control methods used i.e selective 

###5. how will i implement the app and track progress(trello).*###

###6. Conclusion###


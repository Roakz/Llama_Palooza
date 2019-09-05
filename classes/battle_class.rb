require 'artii'
require 'rainbow'
require_relative 'llama_classes'

  class Battle
  #attr reader to create getters for the required methods
  attr_accessor :user_select, :comp_attack, :player_atack, :winner, :loser, :next_name, :winner_loser
  attr_accessor :starter_name, :flip, :coin, :starter, :toss_match, :next_health, :starter_health
  #Initializing the battle class with some known instance variables to be used in certain methods
    def initialize
      @sloth_array = ["Crushing Cuddle", "Slap attack", "Sloth smash", "Flying Round-house to the groin"]
      @llama_array = ["Spinning back kick to the face", "Llama Stomp", "Dramatic Head-Butt", "Wild bite to sloths swingin arm"]
      @ascii = LlamaWarriors.new
    end

    # This will keep looping if the input is not either of the when selections 
    # When it is it will create a new instance ready for the battle match-up
    def user_select(integer)
      loop do
        case integer
          when 1
            return Karl.new
            break
          when 2
            return Guspatcho.new
            break
          when 3
            return LemonyWinks.new
            break
          when 4
            llama_selection = LlamaWarriors.new
            rand_llama = llama_selection.randomize_llama
            rand_llama = rand_llama[0].new
            return rand_llama
            break
          else  
          puts Rainbow("Thats not a valid input please try again!").bright.red
          integer = gets.chomp.to_i
        end
      end
    end

      # Battle match up accepts the player and sloth name methods from there appropriate classes 
      # It then uses the print artii method from the llama class created in initialization to display 
      # a match up screen
      def match_up(user, sloth)
        puts Rainbow(@ascii.print_artii(user)).bright.purple
        puts""
        puts Rainbow(@ascii.print_artii("VS")).bright.red
        puts""
        puts Rainbow(@ascii.print_artii(sloth)).bright.blue
      end

      #randomizes 1 or 2 and returns heads or tail printed in artii to the screen
      def coin_toss(user_choice, p1, comp, player_name, sloth_name)
        @coin = user_choice
        @flip = rand(1..2)
      # Using ternary to assign the appropriate variables for the battle loop depending on results of flip
        toss_match = @flip == @coin
        toss_match ?  @starter = p1 && @next = comp : @next = p1 && @starter = comp
        @starter_health = toss_match ? p1[:llama_h] : comp[:sloth_h]
        @next_health = toss_match ? comp[:sloth_h] : p1[:llama_h]
        @starter_attack = toss_match ? (p1[:llama_a] - p1[:llama_d]) : (comp[:sloth_a] - comp[:sloth_d])
        @next_attack = toss_match ? (comp[:sloth_a] - comp[:sloth_d]) : (p1[:llama_a] - p1[:llama_d])
        @starter_name = toss_match ? player_name : sloth_name
        @next_name = toss_match ? sloth_name : player_name
        @next_array = toss_match ? @sloth_array : @llama_array
        @starter_array = toss_match ? @llama_array : @sloth_array
      end
           
      #The main battle loop. It uses the information from the instance variables in coin toss to ensure the winner 
      #of heads and tails starts and then turns are taken.Loop will continue until either health it less than 1
      def battle_loop(p1, comp, player_name, sloth_name)
          # winner of toss takes first attack as @starter and the battle loops until we have a winner
          until @starter_health < 1 || @next_health < 1
            puts Rainbow("#{@starter_name} dealt a #{@starter_array.sample(1)[0]}").bright.red
            @next_health -= @starter_attack
            puts Rainbow("#{@next_health} is #{@next_name}'s Health").bright.red
            puts Rainbow("--------------------PRESS ENTER TO CONTINUE-------------------").bright.purple
            gets.chomp
           # calling winner_loser method to assign values to @winner and @loser
            winner_loser(@next_health)
           # checking if we have a winner and breaks the loop if we do
          break if @next_health < 1 
           # next_attack i.e loser of the coin toss
            puts Rainbow("#{@next_name} dealt a #{@next_array.sample(1)[0]}").bright.blue
            @starter_health -= @next_attack
            puts Rainbow("#{@starter_health} is #{@starter_name}'s Health").bright.blue
            puts Rainbow("--------------------PRESS ENTER TO CONTINUE-------------------").bright.purple
            gets.chomp
           # Calling winner_loser method to assign values to @winner & @loser
            winner_loser(@next_health)
          end
        end

        # Method to assign the winner and loser to a value. Values used in main script to print to screen.
      def winner_loser(health) #parameter only assigned for testing purposes, its not actually required to work
        if health < 1 
           @winner = @starter_name
           @loser = @next_name
        else
           @winner = @next_name
           @loser = @starter_name
        end
      end
  end


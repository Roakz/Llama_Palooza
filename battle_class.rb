require 'artii'
require 'rainbow'
require_relative 'llama_classes'

  class Battle
  attr_reader :user_select, :comp_attack, :player_atack, :winner, :loser
  def initialize
    @ascii = LlamaWarriors.new
  end

  # This will keep looping if the input is not either of the when selections 
  # When it is it will create a new instance ready for the match-up
  def user_select(integer)
    loop do
      case integer
        when 1
          return karl = Karl.new
          break
        when 2
        return guspatcho = Guspatcho.new
        break
        when 3
        return lemony = LemonyWinks.new
        break
        when 4
        llama_selection = LlamaWarriors.new
        rand_llama = llama_selection.randomize_llama
        rand_llama = rand_llama[0].new
        return rand_llama
        break
        else  
          puts "Thats not a valid input please try again!"
          integer = gets.chomp.to_i
        end
      end
    end
    
      def match_up(user, sloth, player)
        puts Rainbow(player.print_artii(user)).bright.purple
        puts""
        puts Rainbow(player.print_artii("VS")).bright.red
        puts""
        puts Rainbow(player.print_artii(sloth)).bright.blue
      end

      def coin_toss(coin)
        @coin = coin
        @flip = rand(1..2)
        puts Rainbow( @ascii.print_artii( @flip == 1 ? "HEADS" : "TAILS")).bright.red 
        puts Rainbow( @ascii.print_artii( @coin == @flip ? "YOU START!" : "SLOTH BOSS STARTS : (")).bright.blue
      end
          
      def battle_loop(p1, comp, player_name, sloth_name)
      #long ass list of variables using ternary to assign the appropriate value depending on who wins coin toss
        toss_match = @flip == @coin
        @starter = toss_match ? p1 : comp
        @next = toss_match ? comp : p1
        @starter_health = toss_match ? p1[:llama_h] : comp[:sloth_h]
        @next_health = toss_match ? comp[:sloth_h] : p1[:llama_h]
        @starter_attack = toss_match ? (p1[:llama_a] - p1[:llama_d]) : (comp[:sloth_a] - comp[:sloth_d])
        @next_attack = toss_match ? (comp[:sloth_a] - comp[:sloth_d]) : (p1[:llama_a] - p1[:llama_d])
        @starter_name = toss_match ? player_name : sloth_name
        @next_name = toss_match ? sloth_name : player_name
        @sloth_array = ["Crushing Cuddle", "Slap attack", "Sloth smash", "Flying Round-house to the groin"]
        @llama_array = ["Spinning back kick to the face", "Llama Stomp", "Dramatic Head-Butt", "Wild bite to sloths swingin arm"]
        @next_array = toss_match ? @sloth_array : @llama_array
        @starter_array = toss_match ? @llama_array : @sloth_array
        
        #battle loop begins
        puts Rainbow(@ascii.print_artii("BATTLE !! BATTLE !! BATTLE !!")).bright.purple
        puts Rainbow("---------------------PRESS ENTER TO START---------------------").bright.purple
        gets.chomp
          # winner of toss takes first attack
          until @starter_health < 1 || @next_health < 1
            puts Rainbow("#{@starter_name} dealt a #{@starter_array.sample(1)[0]}").bright.red
            @next_health -= @starter_attack
            puts Rainbow("#{@next_health} is #{@next_name}'s Health").bright.red
            puts Rainbow("--------------------PRESS ENTER TO CONTINUE-------------------").bright.purple
            gets.chomp
            if @next_health < 1 
              @winner = @starter_name
              @loser = @next_name
             else
              @winner = @next_name
              @loser = @starter_name
           end
          break if @next_health < 1 
            # next_attack
            puts Rainbow("#{@next_name} dealt a #{@next_array.sample(1)[0]}").bright.blue
            @starter_health -= @next_attack
            puts Rainbow("#{@starter_health} is #{@starter_name}'s Health").bright.blue
            puts Rainbow("--------------------PRESS ENTER TO CONTINUE-------------------").bright.purple
            gets.chomp
            if @next_health < 1 
              @winner = @starter_name
              @loser = @next_name
             else
              @winner = @next_name
              @loser = @starter_name
           end
          end
        end

  end


require 'artii'
require 'rainbow'
require_relative 'llama_classes'

class Battle
attr_reader :user_select, :comp_attack, :player_atack
# This will keep looping if the input is not either of the when selections 
# When it is it will create a new instance ready for the match-up
def initialize
  @ascii = LlamaWarriors.new
end

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
      @p1_health = p1[:llama_h]
      @comp_health = comp[:sloth_h]
      @player_attack = (p1[:llama_a] - p1[:llama_d])
      @comp_attack = (comp[:sloth_a] - comp[:sloth_d])
      @sloth_array = ["Crushing Cuddle", "Slap attack", "Sloth smash", "Flying Round-house to the groin"]
      @llama_array = ["Spinning back kick to the face", "Llama Stomp", "Dramatic Head-Butt", "Wild bite to sloths swingin arm"]
      puts Rainbow(@ascii.print_artii("BATTLE !! BATTLE !! BATTLE !!")).bright.purple
      puts Rainbow("---------------------PRESS ENTER TO START---------------------").bright.purple
      gets.chomp
      
      #player_attack  
      if @flip == @coin
        until @p1_health < 1 || @comp_health < 1
          puts Rainbow("#{player_name} dealt a #{@llama_array.sample(1)[0]}").bright.red
          @comp_health -= @player_attack
          puts "#{@comp_health} Sloth Boss's Health"
          puts Rainbow("--------------------PRESS ENTER TO CONTINUE-------------------").bright.purple
          gets.chomp
         break if @comp_health < 1 
         
        #comp_atack
          puts Rainbow("#{sloth_name} dealt a #{@sloth_array.sample(1)[0]}").bright.blue
          @p1_health -= @comp_attack
          puts "#{@p1_health} #{player_name}'s Health"
          puts Rainbow("--------------------PRESS ENTER TO CONTINUE-------------------").bright.purple
          gets.chomp
        end
      #comp_attack
      else
        until @p1_health < 1 || @comp_health < 1
          puts Rainbow("#{sloth_name} dealt a #{@sloth_array.sample(1)[0]}").bright.blue
          @p1_health -= @comp_attack
          puts "#{@p1_health} #{player_name}'s Health"
          puts Rainbow("--------------------PRESS ENTER TO CONTINUE-------------------").bright.purple
          gets.chomp
          break if @p1_health < 1 
          
          #player attack
          puts Rainbow("#{player_name} dealt a #{@llama_array.sample(1)[0]}").bright.red
          @comp_health -= @player_attack
          puts "#{@comp_health} Sloth Boss's Health" 
          puts Rainbow("--------------------PRESS ENTER TO CONTINUE-------------------").bright.purple
          gets.chomp
        end
      end

        
     end
end


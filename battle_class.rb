require 'artii'
require 'rainbow'
require_relative 'llama_classes'

class Battle
attr_reader :user_select, :comp_attack, :player_atack
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
      @ascii = LlamaWarriors.new
      @flip = rand(1..2)
      puts Rainbow( @ascii.print_artii( @flip == 1 ? "HEADS" : "TAILS")).bright.red 
      puts Rainbow( @ascii.print_artii( @coin == @flip ? "YOU START!" : "SLOTH BOSS STARTS : (")).bright.blue
    end
        
    def battle_loop(p1, comp, player_name, sloth_name)
      @sloth_array = ["Crushing Cuddle", "Slap attack", "Sloth smash", "Flying Round-house to the groin"]
      @llama_array = ["Spinning back kick to the face", "Llama Stomp", "Dramatic Head-Butt", "Wild bite to sloths swingin arm"]
      #player_attack  
      if @flip == @coin
          @comp_health = (comp[:sloth_h] - (@player_attack = (p1[:llama_a] - p1[:llama_d])))
          puts "#{player_name} deals a #{@llama_array.sample(1)[0]}"
          puts @comp_health
          puts @player_attack

      #comp_attack
      else
          @p1_health = (p1[:llama_h] - (@comp_attack = (comp[:sloth_a] - comp[:sloth_d])))
          puts "#{sloth_name} deals a #{@sloth_array.sample(1)[0]} "
          puts @p1_health
          puts @comp_attack
      end

        
     end
end


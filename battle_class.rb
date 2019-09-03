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

    def battle_loop(p1, comp, coin)
      @flip = rand(1..2)
      puts @flip #testing
        if @flip == coin
        #player_attack
          @comp_health = (comp[:sloth_h] - (p1[:llama_a] - p1[:llama_d]))
          puts @comp_health
        else
          #comp_attack
          @p1_health = (p1[:llama_h] - (comp[:sloth_a] - comp[:sloth_d]))
          puts @p1_health
        end

        
     end
end


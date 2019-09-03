
class Battle
attr_reader :user_select
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
    
end
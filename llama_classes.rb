require "artii"
require "rainbow"
#Super class Llamma warriors. Instance variables define the health,attack & defense stats for all llamas within the initialize method.
class LlamaWarriors
    attr_accessor :health, :attack, :defense, :display, :print_artii, :name
      def initialize
        @name = ""
        @health = 10
        @attack = 4
        @defense = 2                    
      end 
#The print artii method helps keep the code DRY on the main ruby script as i will be using this function on most screens
      def print_artii(word)
        @var = Artii::Base.new :font => 'slant'
        @var = @var.asciify(word) 
        return @var
      end
#displays the stats for instance it is called on
      def display
        return @display + " Health:#{@health} Attack:#{@attack} Defense:#{@defense}"
      end

      def llama_atts
        return llama_hash = {llama_h:@health, llama_a:@attack, llama_d:@defense}
      end

      def randomize_llama
        llamas = [Karl, LemonyWinks, Guspatcho]
        return llamas.sample(1)
      end
end
    # each sub class initialzed with added ability plus display defiened as an instance variable
    class Karl < LlamaWarriors 
      def initialize
        super
        @name = "KARL"
        @attack += 1
        @display = "Hey I'm Karl....I like to wear funny hats.I am pleasant & speak calmly. Dont be fooled though!\nIm secretly a phycopath that get's the rumblies that only Sloth hands can satisfy...just sayin\nCheck out my Stats!"
      end
    end 
   
    class Guspatcho < LlamaWarriors 
      def initialize
        super
       @name = "Guspatcho"
       @defense += 1
       @display = "I am a the Guspatcho a!...I a come from the hills in Italia!. This is where i learna to defenda my territory!\nFighting off sloths Pffft.....easy peasy!!! You willa see that my a statsa reflect my skills!\nCheck out mya defensa!"
      end
    end
   
    class LemonyWinks < LlamaWarriors 
      def initialize
        super
        @name = "LEMONY-WINKS"
        @health += 3  
        @display = "Namaste! I'm Lemony-winks....I am a picture of llama vitality and health.My passtimes include llama yoga\nLong walks On the beach & kicking sloth butt! As a result im really hard to kill!\nCheck out my Stats!"
      end
    end
    
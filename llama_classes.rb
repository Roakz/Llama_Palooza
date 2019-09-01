#Super class Llamma warriors. Instance variables define the health,attack & defense stats for all llamas within the initialize method.
class LlamaWarriors
    attr_accessor :health, :attack, :defense, :guspatcho_defense, :karl_attack, :lemonywinks_health
    
      def initialize
        @health = 10
        @attack = 3
        @defense = 2
      end 
    
    
    end
    # Sub classes of The llama warrior class defined below with inheritance 
    
    class Karl < LlamaWarriors # Karl has higher attack than the other llamas, value returned to @karl_attack
      def k_able
        @karl_attack = @attack + 1
        puts Rainbow("Hey I'm Karl....I like to wear funny hats.I am pleasant & speak calmly. Dont be fooled though!").red.bright
        puts Rainbow("Im secretly a phycopath that get's the rumblies that only Sloth hands can satisfy...just sayin").red.bright
        puts""
        puts Rainbow("Check out my Stats! Health: #{@health} Attack: #{@karl_attack} Defense: #{@defense}").red.bright
      end
    end 
    
    class Guspatcho < LlamaWarriors # Guspatcho as better defense than the other llamas, value retuned to @Guspatcho_defense
      def g_able
        @guspatcho_defense = @defense + 1
        puts Rainbow("I am a the Guspatcho a!...I a come from the hills in Italia!. This is where i learna to defenda my territory!").blue.bright
        puts Rainbow("Fighting off sloths Pffft.....easy peasy!!! You willa see that my a statsa reflect my skills!").blue.bright
        puts""
        puts Rainbow("Check out mya defensa! Health: #{@health} Attack: #{@attack} Defense: #{@guspatcho_defense}").blue.bright
      end
    end
    
    class LemonyWinks < LlamaWarriors #Lemony winks has higher health than other llamas, value returned to @lemony_health
      def l_able
        @lemony_health = @health += 3
        puts Rainbow("Namaste! I'm Lemony-winks....I am a picture of llama vitality and health.My passtimes include llama yoga").purple.bright
        puts Rainbow("Long walks On the beach & kicking sloth butt! As a result im really hard to kill!").purple.bright
        puts ""
        puts Rainbow("Check the Stats! Health: #{@lemony_health} Attack: #{@attack} Defense: #{@defense}").purple.bright
      end
    end
    
#Super class Llamma warriors. Instance variables define the health,attack & defense stats for all llamas within the initialize method.
class LlamaWarriors
attr_accessor :health, :attack, :defense, :guspatcho_defense, :karl_attack, :lemonywinks_health

  def initialize
    @health = 10
    @attack = 3
    @defense = 2
  end 

end
# Sub classes of The llama warrior class defined below for inheritance 

class Karl < LlamaWarriors # Karl has higher attack than the other llamas, value returned to @karl_attack
  def k_able
    @karl_attack = @attack + 1
    p "Hey I'm Karl...I like to wear funny hats.... I am pleasant and speak calmly. Dont be fooled though!"
    p "Im secretly a phycopath that get's the rumblies that only Sloth hands can satisfy."
      "Check out my Stats! Health: #{@health} Attack: #{@karl_attack} Defense: #{@defense}"
  end
end 

class Guspatcho < LlamaWarriors # Guspatcho as better defense than the other llamas, value retuned to @Guspatcho_defense
  def g_able
    @guspatcho_defense = @defense + 1
    p "I am a the Guspatcho a!...I a come from the hills in Italia!. This is where i learna to defenda my territory!"
    p "Fighting off sloths Pffft..easy peasy! You willa see that my a statsa reflect my skills!"
      "Check out mya defensa! Health: #{@health} Attack: #{@attack} Defense: #{@guspatcho_defense}"
  end
end

class LemonyWinks < LlamaWarriors #Lemony winks has higher health than other llamas, value returned to @lemony_health
  def l_able
    @lemony_health = @health += 3
    p "Namaste! I'm Lemony-winks....I am a picture of llama vitality and health."
    p "My passtimes include llama yoga & long walks On the beach "
    p "As a result of the care that i take for myself im really hard to kill!"
      "Check the Stats! Health: #{@lemony_health} Attack: #{@attack} Defense: #{@defense}"
  end
end


karl = Karl.new
guspatcho = Guspatcho.new
lemonywinks = LemonyWinks.new

p karl.k_able
p""
p guspatcho.g_able
p""
p lemonywinks.l_able
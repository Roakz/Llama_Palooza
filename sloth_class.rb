
#This is the class that covers the attributes of the computer player (sloth)
# When an instance of sloth is initialized its stats will be allocated from random assignment of a number
class Sloth
    attr_accessor :comp_health, :comp_attack, :comp_defense, :name
    def initialize 
    @comp_health = rand(10..14)
    @comp_attack = rand(4..5)
    @comp_defense = rand(2..3)
    @name = "SLOTH BOSS"
    end
    
    def sloth_atts
      sloth_hash = {sloth_h:@comp_health, sloth_a:@comp_attack, sloth_d:@comp_defense}
    end
  end
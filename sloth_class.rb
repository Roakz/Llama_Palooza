
#This is the class that covers the attributes of the computer player (sloth)
# When an instance of sloth is initialized its stats will be allocated from random assignment of a number
class Sloth
    attr_accessor :comp_health, :comp_attack, :comp_defense
    def initialize 
    @comp_health = rand(10..14)
    @comp_attack = rand(3..4)
    @comp_defense = rand(2..3)
    end
  
    def com_health
      return @comp_health
    end
  
    def com_attack
      return @comp_attack
    end
    def com_defense
      return @comp_defense
    end
  end
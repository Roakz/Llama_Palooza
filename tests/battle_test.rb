require "test/unit"
require_relative "../classes/battle_class"
require_relative "../classes/sloth_class"

class BattleTest < Test::Unit::TestCase

    def setup
      @battle = Battle.new
      @karl = Karl.new
      @sloth = Sloth.new
    end
# Testing to ensure that when a user makes a choice a new instance is created
    def test_selection
       @player = @battle.user_select(1)
        assert_instance_of(Karl, @player)

       @rand_player = @battle.user_select(4)
       assert_instance_of([Karl, Guspatcho, LemonyWinks], @rand_player)
    end
#Testing to ensure that the correct player is assigned to the correct variables in coin toss method
    def  test_battle_variables
        @battle.coin_toss(1, @karl.llama_atts, @sloth.sloth_atts, @karl.name, @sloth.name)
        @battle.toss_match = false
        assert_equal(@battle.starter, @sloth.sloth_atts)
    end

    def test_winner
        @battle.starter_name = @sloth.name
        @battle.next_name = @karl.name
        @battle.winner_loser(3)
        assert_equal(@battle.winner, @battle.next_name)    
    end
end
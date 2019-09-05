require "test/unit"
require_relative "../battle_class"

class BattleTest < Test::Unit::TestCase

    def setup
      @battle = Battle.new
    end
# Testing to ensure that when a user makes a choice a new instance is created
    def test_selection
       @player = @battle.user_select(1)
        assert_instance_of(Karl, @player)

       @rand_player = @battle.user_select(4)
       assert_instance_of([Karl, Guspatcho, LemonyWinks], @rand_player)
    end
end
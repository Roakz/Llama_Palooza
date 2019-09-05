require "test/unit"
require_relative "../llama_classes"
require 'artii'

class LlamaTest < Test::Unit::TestCase

    #Testing print artii method
    def test_print_artii
        @artii = LlamaWarriors.new
        @var = Artii::Base.new :font => 'slant'
        @var = @var.asciify("Llama")
        assert_equal(@var, @artii.print_artii("Llama") )    
    end
    # Testing to make sure that a subclass generated Llama displays the correct atts
    def test_llama_atts
        @karl = Karl.new
        assert_equal(@karl.llama_atts[:llama_a], 6)
        @gus = Guspatcho.new
        assert_equal(@gus.llama_atts[:llama_d], 3)
        @lem = LemonyWinks.new
        assert_equal(@lem.llama_atts[:llama_h], 13)
    end
# A simple test to make sure that the array is sampling correctly 
    def test_llama_array
        @llama = LlamaWarriors.new
        @test = @llama.randomize_llama
        assert_include([Karl, LemonyWinks, Guspatcho], @test[0])
    end

end

# Testing Pronoun Switches

require 'minitest/autorun'
require_relative 'wordplay'

class TestWordPlay < Minitest::Test

  def test_basic_pronouns
    assert_equal("i am a robot", WordPlay.switch_pronouns("you are a robot"))
    assert_equal("you are a person", WordPlay.switch_pronouns("i am a person"))
    assert_equal("i love you", WordPlay.switch_pronouns("you love me"))
  end
  
  def test_mixed_pronouns
    assert_equal("you gave me life", WordPlay.switch_pronouns("i gave you life"))
    assert_equal("i am not what you are", WordPlay.switch_pronouns("you are not what i am"))
    assert_equal("i annoy your dog", WordPlay.switch_pronouns("you annoy my dog"))
  end
  
  def test_complex_pronouns
    assert_equal("yes, i rule", WordPlay.switch_pronouns("yes, you rule"))
    assert_equal("why do i cry", WordPlay.switch_pronouns("why do you cry"))
  end

end

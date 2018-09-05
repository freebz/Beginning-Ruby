# Testing Best Sentence Choice

require 'minitest/autorun'
require_relative 'wordplay'

class TestWordPlay < Minitest::Test

  def test_sentence_choice
    assert_equal('This is a great test',
                 WordPlay.best_sentence(['This is a test',
                                         'This is another test',
                                         'This is a great test'],
                                        %w{test great this}))
    assert_equal('This is a great test',
                 WordPlay.best_sentence(['This is a great test'],
                                        %W{still the best}))
  end

end

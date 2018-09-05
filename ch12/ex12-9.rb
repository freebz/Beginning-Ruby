# Testing Word Separation

require 'minitest/autorun'
require_relative 'wordplay'

class TestWordPlay < Minitest::Test

  def test_words
    assert_equal(%w{this is a test}, "this is a test".words)
    assert_equal(%w{these are mostly words}, "these are, mostly, words".words)
  end

end


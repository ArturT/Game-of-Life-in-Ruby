# http://en.wikibooks.org/wiki/Ruby_Programming/Unit_testing

require "test/unit"

class BasicUnitTests < Test::Unit::TestCase
 
  def test_simple
    assert_equal(1, 1)
  end
  
end
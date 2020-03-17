require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../bears')
require_relative('../fish')

class FishTest < MiniTest::Test
  def setup
    @fish = Fish.new("Bob")
  end

  def test_fish_has_name
    assert_equal("Bob", @fish.name)
  end
end

require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../bears')
require_relative('../fish')

class RiverTest < MiniTest::Test
  def setup
    @river = River.new("Amazon")
  end

  def test_river_has_name
    assert_equal("Amazon", @river.name)
  end

  def test_river_can_add_fish
    @river.add_fish("Bob")
    assert_equal(1, @river.fish_count)
  end

  def test_lose_fish_to_bear
    bear = Bears.new("Yogi", "Grizzly")

    @river.lose_fish_to_bear("Bob", bear)

    assert_equal(1, bear.fish_count)
    assert_equal(0, @river.fish_count)
  end
end

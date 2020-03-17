require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../bears')
require_relative('../fish')

class BearsTest < MiniTest::Test
  def setup
    @bear = Bears.new("Yogi", "Grizzly")
  end

  def test_bear_has_name
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_has_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_bear_can_roar
    result = @bear.roar
    assert_equal("Roar", result)
  end

  def test_bear_can_count_fish
    result = @bear.fish_count
    assert_equal(0, result)
  end
  
  # def test_add_fish
  #   @bear.take_fish("Bob")
  #   assert_equal(1, @bear.fish_count)
  # end
end

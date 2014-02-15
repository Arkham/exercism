require 'minitest/autorun'
require_relative 'clock'

class ClockTest < MiniTest::Unit::TestCase
  def test_on_the_hour
    assert_equal "08:00", Clock.at(8).to_s
    assert_equal "09:00", Clock.at(9).to_s
  end

  def test_past_the_hour
    assert_equal "11:09", Clock.at(11, 9).to_s
  end

  def test_add_a_few_minutes
    clock = Clock.at(10) + 3
    assert_equal "10:03", clock.to_s
  end

  def test_add_over_an_hour
    clock = Clock.at(10) + 61
    assert_equal "11:01", clock.to_s
  end

  def test_wrap_around_at_midnight
    clock = Clock.at(23, 30) + 60
    assert_equal "00:30", clock.to_s
  end

  def test_subtract_minutes
    clock = Clock.at(10) - 90
    assert_equal "08:30", clock.to_s
  end

  def test_equivalent_clocks
    clock1 = Clock.at(15, 37)
    clock2 = Clock.at(15, 37)
    assert_equal clock1, clock2
  end
end

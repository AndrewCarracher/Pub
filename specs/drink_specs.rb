require 'minitest/autorun'
require 'minitest/rg'
require_relative '../drink'

class TestDrinks < MiniTest::Test

  def setup
    @drink1 = Drink.new("beer", 2)
    @drink2 = Drink.new("wine", 3)
  end

  def test_drink_has_name
    assert_equal("beer", @drink1.name)
  end
end

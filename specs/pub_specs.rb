require 'minitest/autorun'
require 'minitest/rg'
require_relative '../pub'
require_relative '../drink'

class TestPub < MiniTest::Test

  def setup
    @drink1 = Drink.new("beer", 2)
    @drink2 = Drink.new("wine", 3)
    @pub = Pub.new("Chanter", 1000, [@drink1, @drink2])
  end

  def test_pub_has_name
    assert_equal("Chanter", @pub.name)
  end

  def test_pub_has_money
    assert_equal(1000, @pub.till)
  end

  def test_pub_has_stock
    assert_equal([@drink1, @drink2], @pub.drinks)
  end

  def test_sell_drink
    @pub.sell_drink(@drink2)
    assert_equal(1003, @pub.till)
  end

end

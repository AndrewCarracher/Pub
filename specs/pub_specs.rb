require 'minitest/autorun'
require 'minitest/rg'
require_relative '../pub'
require_relative '../drink'
require_relative '../customers'

class TestPub < MiniTest::Test

  def setup
    @drink1 = Drink.new("beer", 2, 10)
    @drink2 = Drink.new("wine", 3, 20)
    @customer1 = Customer.new("Andrew", 10, 26, 0)
    @customer2 = Customer.new("Katie", 15, 17, 0)
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

  def test_check_customer_age
    @pub.check_age(@customer1, @drink1)
    assert_equal(8, @customer1.wallet)
  end

  def test_customer_too_young
    result = @pub.check_age(@customer2, @drink2)
    assert_equal("Too young!", result)
    assert_equal(15, @customer2.wallet)
  end

end

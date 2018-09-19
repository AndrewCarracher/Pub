require 'minitest/autorun'
require 'minitest/rg'
require_relative '../customers'
require_relative '../drink'

class TestCustomers < MiniTest::Test

  def setup
    @drink1 = Drink.new("beer", 2)
    @drink2 = Drink.new("wine", 3)
    @customer1 = Customer.new("Andrew", 10)
    @customer2 = Customer.new("Katie", 15)
  end

  def test_customer_has_name
    assert_equal("Andrew", @customer1.name)
  end

  def test_customer_has_money
    assert_equal(15, @customer2.wallet)
  end

  def test_has_bought_drink
    @customer2.buy_drink(@drink2)
    assert_equal(12, @customer2.wallet)
  end

end
